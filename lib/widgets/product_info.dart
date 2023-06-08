import 'package:flutter/material.dart';
import 'package:plants/models/products_info_model.dart';

class ProductInfo extends StatefulWidget {
  final ProductInfoModel product;
  const ProductInfo({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.product.img,
                width: MediaQuery.of(context).size.width / 2 - 25,
              ),
              Text(widget.product.productTitle,
                  style: const TextStyle(
                    color: Color(0xff26273b),
                    fontWeight: FontWeight.w600,
                  )),
              Text(
                widget.product.price,
                style: const TextStyle(
                  color: Color(0xff6f708b),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "There are many",
                style: TextStyle(
                  color: Color(0xffacadc1),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, right: 8),
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: Color(0xffbedabd),
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
            onTap: () {
              isLiked = !isLiked;
              setState(() {});
            },
            child: Image.asset(
              !isLiked ? "icons/heart.png" : "icons/red_heart.png",
              scale: 2.95,
            ),
          ),
        ),
      ],
    );
  }
}
