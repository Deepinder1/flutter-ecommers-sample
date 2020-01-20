import 'package:ecommers/ui/decorations/index.dart';
import 'package:ecommers/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String text;
  final String assetIcon;
  final Function onPressedFunction;

  SecondaryButtonWidget(
      {@required this.text,
      @required this.assetIcon,
      @required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return BaseButtonWidget(
        text: text,
        assetIcon: assetIcon,
        buttonColor: Palette.secondaryButtonBackground,
        textColor: Palette.secondaryButtonText,
        onPressedFunction: onPressedFunction,
        blurColor: Palette.secondaryButtonBlur);
  }
}