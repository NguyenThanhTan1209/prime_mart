import 'package:flutter/material.dart';

class HomePageHeaderWidget extends StatelessWidget {
  const HomePageHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'SUGGEST FOR YOU',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 16,
            ),
          ],
        ),
        Text(
          'Find the stuff you love.',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}