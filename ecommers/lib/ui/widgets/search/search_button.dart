import 'package:ecommers/shared/dependency_service.dart';
import 'package:ecommers/ui/decorations/dimens/index.dart';
import 'package:ecommers/ui/decorations/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchButton extends StatelessWidget {
  final Function() onPressed;

  const SearchButton({Key key, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: CupertinoButton(
        padding: const EdgeInsets.all(Insets.x2),
        borderRadius: BorderRadius.circular(Radiuses.big_2x),
        color: BrandingColors.blur,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.search,
              size: FontSizes.normal,
              color: BrandingColors.primaryText,
            ),
            const SizedBox(width: Insets.x2),
            Text(
              localization.searchHintText,
              style: textTheme.bodyText1.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
