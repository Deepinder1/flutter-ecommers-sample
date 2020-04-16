import 'package:ecommers/core/common/index.dart';
import 'package:ecommers/core/services/index.dart';
import 'package:ecommers/ui/widgets/right_menu_bar/models/index.dart';
import 'package:flutter/material.dart';
import 'package:ecommers/extensions/string_extension.dart';
import 'package:ecommers/ui/decorations/dimens/index.dart';

@immutable
class RightMenuSubTitle extends StatelessWidget {
  final RightMenuItemModel model;

  const RightMenuSubTitle({@required this.model});

  @override
  Widget build(BuildContext context) {
    final modelItem = model.runtimeType;
    switch (modelItem) {
      case RightMenuSubTitleModel:
        return createSubTitle(context);
        break;
      case RigthMenuPriceModel:
        return createPrice(context);
        break;
      case RightMenuColorsModel:
        return createCircles();
        break;
      default:
        return const Text('');
    }
  }

  Widget createSubTitle(BuildContext context) {
    final subTitleModel = model as RightMenuSubTitleModel;
    return InkWell(
      onTap: () => {
        // rightMenuNavigationService.navigateTo(Pages.rightMenuSecondPage,
        //     arguments: subTitleModel.subTitle),
      },
      child: Text(
        subTitleModel.subTitle[0],
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: Colors.transparent.withOpacity(0.3),
            ),
      ),
    );
  }

  Widget createPrice(BuildContext context) {
    final priceModel = model as RigthMenuPriceModel;

    return Text(
      '\$${priceModel.minPrice} - \$${priceModel.maxPrice}',
      style: Theme.of(context).textTheme.subtitle1.copyWith(
            color: Colors.transparent.withOpacity(0.3),
          ),
    );
  }

  Widget createCircles() {
    final colorsModel = model as RightMenuColorsModel;
    final colors = colorsModel.colors;

    return Stack(
      children: colors
          .map((color) =>
              circleBuilder(color, colors.length - colors.indexOf(color)))
          .toList(),
    );
  }

  Widget circleBuilder(String color, int index) {
    return Container(
      width: Insets.x5,
      height: Insets.x5,
      margin: EdgeInsets.only(left: Insets.x3 * index),
      decoration: BoxDecoration(
        color: color.fromHexToColor(),
        shape: BoxShape.circle,
      ),
    );
  }
}
