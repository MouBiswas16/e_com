import 'dart:ui';

class ProductModel {
  int? id;
  String? productName;
  double? price;
  String? image;
  int quantity = 1;
  String? productDetails;

  ProductModel(
      {this.id, this.productName, this.price, this.image, this.productDetails});
}

List<ProductModel> productList = [
  ProductModel(
      id: 1,
      productName: "T-Shirt",
      image: "assets/images/t-shirt.png",
      price: 500,
      productDetails: "T-shirts fit small, medium, large."),
  ProductModel(
      id: 2,
      productName: "Shirt",
      image: "assets/images/shirt.png",
      price: 600,
      productDetails: "Shirts fit small, medium, large."),
  ProductModel(
      id: 3,
      productName: "Shorts",
      image: "assets/images/shorts.png",
      price: 700,
      productDetails: "Shorts for casual and playing sports."),
  ProductModel(
      id: 4,
      productName: "Headset",
      image: "assets/images/headset.png",
      price: 700,
      productDetails: "Headset for any occasion and casual use."),
  ProductModel(
      id: 5,
      productName: "Speaker",
      image: "assets/images/speaker.png",
      price: 650,
      productDetails: "Speaker for any old and new songs can be Bass-boosted."),
  ProductModel(
      id: 6,
      productName: "Watch",
      image: "assets/images/watch.png",
      price: 700,
      productDetails: "Water proof and for any occasional and casual use."),
  ProductModel(
      id: 7,
      productName: "Perfume",
      image: "assets/images/perfume.png",
      price: 900,
      productDetails:
          "Perfume that can fit in any occasion and for party also."),
  ProductModel(
      id: 8,
      productName: "Cap",
      image: "assets/images/cap.png",
      price: 800,
      productDetails: "Cap for your daily casual use and for sports."),
];
