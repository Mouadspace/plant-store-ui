import 'package:flutter/material.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          height: 150,
          decoration: BoxDecoration(
            color: const Color(0xffbedabd),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Row(
          children: [
            Image.asset(
              "images/plant9.png",
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text("Plants to decorate\nyour home",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "With the best price",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/products");
                  },
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
