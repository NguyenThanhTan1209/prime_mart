import 'package:flutter/material.dart';

import '../contants/number_contants.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.circleImagePath,
    required this.illustrationImagePath,
    required this.alignment,
    required this.title,
    required this.subTitle,
  });

  final String circleImagePath;
  final String illustrationImagePath;
  final Alignment alignment;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(alignment: alignment, child: Image.asset(circleImagePath)),
        Center(child: Image.asset(illustrationImagePath)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: NumberContants.HORIZONTAL_24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: NumberContants.HEIGHT_24,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
