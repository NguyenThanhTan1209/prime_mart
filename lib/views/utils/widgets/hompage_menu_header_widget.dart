import 'package:flutter/material.dart';

class HomePageMenuHeaderWidget extends StatelessWidget {
  const HomePageMenuHeaderWidget({
    super.key,
    required this.title,
    required this.seeAllFunction,
  });

  final String title;
  final VoidCallback seeAllFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
          TextButton(
            onPressed: seeAllFunction,
            child: Text(
              'SEE ALL',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xffa6a6aa),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xffa6a6aa),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
