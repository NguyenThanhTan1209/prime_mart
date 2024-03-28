import 'package:flutter/material.dart';

class TabItemWidget extends StatelessWidget {
  const TabItemWidget({
    super.key,
    required this.onTap,
    required this.tabIcon,
    required this.tabIndex,
    required this.seletedIndex,
  });
  final VoidCallback? onTap;
  final IconData tabIcon;
  final int tabIndex;
  final int seletedIndex;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        tabIcon,
        color: tabIndex == seletedIndex
            ? const Color(0xff3a3a3a)
            : const Color(0xffbcbcd4),
            size: 20,
      ),
    );
  }
}
