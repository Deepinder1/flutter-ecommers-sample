import 'package:flutter/widgets.dart';

extension StringExtension on String {
  bool get isNullOrEmpty => this == null || isEmpty;
  bool get isNotNullOrEmpty => this != null && isNotEmpty;

  Color fromHexToColor() {
    if (this == null) return null;

    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  Size size(TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: this, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
