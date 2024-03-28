import 'package:flutter/material.dart';

import '../../../business_logic/models/product.dart';
import '../contants/color_contants.dart';
import 'promotion_chip_widget.dart';

class SuggestCarouselItemWidget extends StatelessWidget {
  const SuggestCarouselItemWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(child: Image.network(product.imagePath)),
          Container(
            height: 165,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.productName,
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '\$${product.priceAfterPromote}  ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      '\$${product.originalPrice} ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffcbcbd4),
                            decoration: TextDecoration.lineThrough,
                            decorationColor: const Color(0xffcbcbd4),
                          ),
                    ),
                    const Spacer(),
                    PromotionChipWidget(promotion: product.promotion),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  product.description,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: const Color(0xffa6a6aa),
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
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
                            text: '${product.starPoint}',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          TextSpan(
                            text: '(${product.pointQuantity})',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      product.category,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffecf6ff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      child: Text(
                        'STAFF PICK',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color(0xff5FA1D5),
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
