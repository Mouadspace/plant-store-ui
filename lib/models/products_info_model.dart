class ProductInfoModel {
  final String img, productTitle, price;

  ProductInfoModel(
      {required this.img, required this.productTitle, required this.price});
}

List<ProductInfoModel> productsDetail = [
  ProductInfoModel(
    img: "images/plant3.jpg",
    productTitle: "Samabaia Plant",
    price: "\$45,50",
  ),
  ProductInfoModel(
    img: "images/plant5.jpg",
    productTitle: "Eucalipto Plant",
    price: "\$60,00",
  ),
];
