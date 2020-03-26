import 'package:ecommers/ui/decorations/dimens/index.dart';
import 'package:ecommers/ui/utils/formatter.dart';
import 'package:ecommers/ui/widgets/index.dart';
import 'package:ecommers/ui/widgets/product_item/product_item_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductItemNormal extends ProductItemBase {
  static const size = Size(101.0, 135.0);
  static const String productTypeName ='normal';

  const ProductItemNormal({
    @required String assetImagePath,
    @required String title,
    @required double cost,
    int id,
  }) : super(
          assetImagePath: assetImagePath,
          cost: cost,
          title: title,
          productSize: size,
          id: id,
          productItemTypeName: productTypeName,
        );

  @override
  Widget buildProductItem(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Center(
            child: HeroImage(
              tag: imageTag,
              imagePath: assetImagePath,
            ),
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: Dimens.defaultTextMaxLines,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontSize: FontSizes.small_3x),
        ),
        Text(
          Formatter.getCost(cost),
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: FontSizes.small_1x,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }
}
