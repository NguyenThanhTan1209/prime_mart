import 'package:flutter/material.dart';

import '../contants/color_contants.dart';
import '../contants/number_contants.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: NumberContants.VERTICAL_40,
        left: NumberContants.HORIZONTAL_28,
        right: NumberContants.HORIZONTAL_28,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorContants.BACKGROUND_BUTTON_COLOR,
          minimumSize: const Size(double.infinity, NumberContants.HEIGHT_48),
          elevation: NumberContants.ELEVATION_0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              NumberContants.BORDER_RADIUS_15,
            ),
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
