import 'package:flutter/material.dart';

import '../contants/color_contants.dart';

class SignInAnotherWidget extends StatelessWidget {
  const SignInAnotherWidget({
    super.key,
    required this.title,
    required this.onPressed,
    required this.iconPath,
  });

  final String title;
  final VoidCallback onPressed;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Image.asset(
        iconPath,
        width: 13,
        height: 13,
      ),
      label: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        shape: const StadiumBorder(
          side: BorderSide(
            color: ColorContants.BLACK_COLOR,
          ),
        ),
      ),
    );
  }
}
