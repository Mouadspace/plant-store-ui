import 'package:flutter/material.dart';
import 'package:plants/widgets/header.dart';

import '../models/product_images_model.dart';
import '../models/products_info_model.dart';
import '../widgets/buy_now.dart';
import '../widgets/product_info.dart';
import '../widgets/search.dart';
import '../widgets/section_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
            child: Column(
              children: [
                const Header(),
                const SizedBox(height: 20),
                const Search(),
                const SizedBox(
                  height: 40,
                ),
                const BuyNow(),
                const SizedBox(height: 20),
                const SectionTitle(text: "Popular"),
                const SizedBox(height: 10),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      ProductInfo(product: productsDetail[0]),
                      const SizedBox(width: 10),
                      ProductInfo(product: productsDetail[1]),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const SectionTitle(text: "Recomended"),
                const SizedBox(
                  height: 10,
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < productImgList.length; i++)
                        Container(
                          color: Colors.white,
                          child: Image.asset(
                            productImgList[i].img,
                            width: MediaQuery.of(context).size.width / 4 - 20,
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
