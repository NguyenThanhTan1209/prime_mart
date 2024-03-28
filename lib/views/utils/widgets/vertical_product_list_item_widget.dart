import 'package:flutter/material.dart';

import '../../../business_logic/models/product.dart';
import 'promotion_chip_widget.dart';

class VerticalProductListItemWidget extends StatelessWidget {
  const VerticalProductListItemWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 88,
          height: 88,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xfff8f7fa),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 20,
                offset: const Offset(0, 10), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 6,
                offset: const Offset(0, 2), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 1,
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.network(product.imagePath, fit: BoxFit.cover,),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                product.productName,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: '\$${product.priceAfterPromote}  ',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        WidgetSpan(
                          child: Visibility(
                            visible: product.promotion != 0,
                            child: Text(
                              '\$${product.originalPrice}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: const Color(0xffcbcbd4),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: const Color(0xffcbcbd4),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: product.promotion!=0,
                    child: PromotionChipWidget(promotion: product.promotion),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
