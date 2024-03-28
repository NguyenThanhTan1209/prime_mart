import 'package:flutter/material.dart';

class PromotionChipWidget extends StatelessWidget {
  const PromotionChipWidget({super.key, required this.promotion});

  final int promotion;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffeaf8ec),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      child: Text(
        '$promotion% OFF',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: const Color(0xff51b960),
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}
