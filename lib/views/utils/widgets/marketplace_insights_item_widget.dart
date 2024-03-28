import 'package:flutter/material.dart';

class MarketplaceInsightItemWidget extends StatelessWidget {
  const MarketplaceInsightItemWidget({
    super.key,
    required this.itemColor,
    required this.insightTitle,
    required this.onPressed,
  });

  final Color itemColor;
  final String insightTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 156,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: itemColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              insightTitle,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xff3a3a3a),
              ),
              child: const Icon(Icons.chevron_right_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
