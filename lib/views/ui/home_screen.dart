import 'package:flutter/material.dart';

import '../utils/contants/color_contants.dart';
import '../utils/widgets/tab_item_widget.dart';
import 'cart_screen.dart';
import 'homepage_screen.dart';
import 'orders_screen.dart';
import 'wishlist_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _body = <Widget>[
    HomepageScreen(),
    const WishlistScreen(),
    const OrdersScreen(),
    const CartScreen(),
  ];

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TabItemWidget(
              onTap: () => _changeTab(0),
              tabIcon: Icons.home_outlined,
              tabIndex: 0,
              seletedIndex: _currentIndex,
            ),
            TabItemWidget(
              onTap: () => _changeTab(1),
              tabIcon: Icons.favorite_outline,
              tabIndex: 1,
              seletedIndex: _currentIndex,
            ),
            const Opacity(
              opacity: 0,
              child: IconButton(onPressed: null, icon: Icon(null)),
            ),
            TabItemWidget(
              onTap: () => _changeTab(2),
              tabIcon: Icons.tag_outlined,
              tabIndex: 2,
              seletedIndex: _currentIndex,
            ),
            TabItemWidget(
              onTap: () => _changeTab(3),
              tabIcon: Icons.shopping_basket_outlined,
              tabIndex: 3,
              seletedIndex: _currentIndex,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: ColorContants.BACKGROUND_BUTTON_COLOR,
        onPressed: () {},
        child: const Icon(Icons.search_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
