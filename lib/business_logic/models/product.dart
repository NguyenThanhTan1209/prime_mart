// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  int id;
  String imagePath;
  String productName;
  double starPoint;
  int pointQuantity;
  String color;
  double originalPrice;
  int promotion;
  double priceAfterPromote;
  String brandName;
  String description;
  String category;
  
  Product({
    required this.id,
    required this.imagePath,
    required this.productName,
    required this.starPoint,
    required this.pointQuantity,
    required this.color,
    required this.originalPrice,
    required this.promotion,
    required this.priceAfterPromote,
    required this.brandName,
    required this.description,
    required this.category,
  });
}
