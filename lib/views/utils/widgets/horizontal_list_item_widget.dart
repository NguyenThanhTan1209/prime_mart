import 'package:flutter/material.dart';

import '../contants/color_contants.dart';

class HorizontalListItemWidget extends StatelessWidget {
  const HorizontalListItemWidget({
    super.key,
    required this.productName,
    required this.productImage,
    required this.originalPrice,
    required this.priceAfterPromotion,
    required this.startPoint,
  });

  final String productName;
  final String productImage;
  final double originalPrice;
  final double priceAfterPromotion;
  final double startPoint;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
                child: Image.network(
                            productImage,
                            fit: BoxFit.fill,
                          ),
              ),),
          // Image.network(productImage, height: 136, fit: BoxFit.cover,),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 124,
                  child: Text(
                    productName,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                RichText(
                  text: TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: '\$$priceAfterPromotion  ',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      TextSpan(
                        text: '\$$originalPrice',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffcbcbd4),
                              decoration: TextDecoration.lineThrough,
                              decorationColor: const Color(0xffcbcbd4),
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                RichText(
                  text: TextSpan(
                    children: <InlineSpan>[
                      const WidgetSpan(
                        child: Icon(
                          Icons.star_rounded,
                          size: 10,
                          color: ColorContants.BACKGROUND_BUTTON_COLOR,
                        ),
                        alignment: PlaceholderAlignment.middle,
                      ),
                      TextSpan(
                        text: '$startPoint',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
