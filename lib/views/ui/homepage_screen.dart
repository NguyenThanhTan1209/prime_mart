import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../business_logic/models/product.dart';
import '../utils/contants/color_contants.dart';
import '../utils/widgets/carousel_item_widget.dart';
import '../utils/widgets/homepage_header_widget.dart';
import '../utils/widgets/hompage_menu_header_widget.dart';
import '../utils/widgets/horizontal_list_item_widget.dart';
import '../utils/widgets/marketplace_insights_item_widget.dart';
import '../utils/widgets/vertical_product_list_item_widget.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({super.key});

  final List<Product> _products = <Product>[
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/711+0tgn+6L._AC_SX679_.jpg',
      productName:
          'ASUS TUF Gaming A17 (2023) Gaming Laptop, 17.3” FHD 144Hz Display, GeForce RTX 4050, AMD Ryzen 9 7940HS, 16GB DDR5, 1TB PCIe 4.0 SSD, Wi-Fi 6, Windows 11, FA707XU-EH94',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/61JHBCsTZxL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description: 'Amet minim mollit et sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
  ];

  final List<Product> _hotDealProducts = <Product>[
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/711+0tgn+6L._AC_SX679_.jpg',
      productName:
          'ASUS TUF Gaming A17 (2023) Gaming Laptop, 17.3” FHD 144Hz Display, GeForce RTX 4050, AMD Ryzen 9 7940HS, 16GB DDR5, 1TB PCIe 4.0 SSD, Wi-Fi 6, Windows 11, FA707XU-EH94',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/711+0tgn+6L._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description: 'Amet minim mollit .',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
  ];

  final List<Product> _favouriteProducts = <Product>[
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/711+0tgn+6L._AC_SX679_.jpg',
      productName:
          'ASUS TUF Gaming A17 (2023) Gaming Laptop, 17.3” FHD 144Hz Display, GeForce RTX 4050, AMD Ryzen 9 7940HS, 16GB DDR5, 1TB PCIe 4.0 SSD, Wi-Fi 6, Windows 11, FA707XU-EH94',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/711+0tgn+6L._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description: 'Amet minim mollit .',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 10,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
    Product(
      id: 111,
      imagePath:
          'https://m.media-amazon.com/images/I/519tAJTfFXL._AC_SX679_.jpg',
      productName: 'Bose Headphones',
      starPoint: 5.0,
      pointQuantity: 34,
      color: 'Black',
      originalPrice: 279.99,
      promotion: 0,
      priceAfterPromote: 265.99,
      brandName: 'Bose',
      description:
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
      category: 'Category',
    ),
  ];

  final List<Tab> _favouriteTabs = <Tab>[
    const Tab(
      child: Text('Music'),
    ),
    const Tab(
      child: Text('Reading'),
    ),
    const Tab(
      child: Text('Gaming'),
    ),
    const Tab(
      child: Text('Fashion'),
    ),
    const Tab(
      child: Text('Music1'),
    ),
    const Tab(
      child: Text('Reading2'),
    ),
    const Tab(
      child: Text('Gaming3'),
    ),
    const Tab(
      child: Text('Fashion4'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/home_circle_background.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 64),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: HomePageHeaderWidget(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CarouselSlider.builder(
                    itemCount: _products.length,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return SuggestCarouselItemWidget(
                        product: _products[index],
                      );
                    },
                    options: CarouselOptions(
                      height: 312,
                      enableInfiniteScroll: false,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  HomePageMenuHeaderWidget(
                    title: 'HOT DEALS',
                    seeAllFunction: () {},
                  ),
                  SizedBox(
                    height: 261,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return HorizontalListItemWidget(
                          productName: _hotDealProducts[index].brandName,
                          productImage: _hotDealProducts[index].imagePath,
                          originalPrice: _hotDealProducts[index].originalPrice,
                          priceAfterPromotion:
                              _hotDealProducts[index].priceAfterPromote,
                          startPoint: _hotDealProducts[index].starPoint,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 16,
                        );
                      },
                      itemCount: _hotDealProducts.length,
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  HomePageMenuHeaderWidget(
                    title: 'YOUR INTERESTS',
                    seeAllFunction: () {},
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Card(
                      surfaceTintColor: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 48,
                        ),
                        height: 386,
                        child: Column(
                          children: <Widget>[
                            DefaultTabController(
                              length: _favouriteTabs.length,
                              child: TabBar(
                                tabs: _favouriteTabs,
                                labelColor: const Color(0xff3a3a3a),
                                indicatorColor: const Color(0xff3a3a3a),
                                isScrollable: true,
                                tabAlignment: TabAlignment.start,
                                dividerColor: Colors.green,
                                dividerHeight: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Expanded(
                              child: ListView.separated(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        VerticalProductListItemWidget(
                                  product: _favouriteProducts[index],
                                ),
                                // ignore: always_specify_types
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  height: 16,
                                ),
                                itemCount: _favouriteProducts.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  GridView.count(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 40),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: <Widget>[
                      MarketplaceInsightItemWidget(
                        itemColor: const Color(0xfffe8668),
                        insightTitle: 'Shopping habits and interests',
                        onPressed: () {},
                      ),
                      MarketplaceInsightItemWidget(
                        itemColor: const Color(0xff30D6B0),
                        insightTitle: 'Today’s trending items',
                        onPressed: () {},
                      ),
                      MarketplaceInsightItemWidget(
                        itemColor: const Color(0xff4269F2),
                        insightTitle: 'Incoming! Flash deals',
                        onPressed: () {},
                      ),
                      MarketplaceInsightItemWidget(
                        itemColor: const Color(0xfffdbc1f),
                        insightTitle: 'Browse our categories',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
