import 'package:flutter/material.dart';

bool isLiked = false;

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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.grid_view_outlined,
                      size: 35,
                      color: Color(0xff6f708b),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 4), // (48-40)/2
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xff6b9d4a),
                        shape: BoxShape.circle,
                      ),
                      // child: Image.asset(
                      //   "icons/businesswoman.png",
                      // ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: TextField(
                        style: TextStyle(
                            // color: Color(0xffE0E0E0),
                            ),
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(
                            color: Color(0xffd6d6e1),
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffd6d6e1),
                            size: 30,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                              color: Color(0xffE0E0E0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),

                          isDense: true, // add this
                          contentPadding: EdgeInsets.all(
                              8), // add this dended the textfeild
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Color(0xffbedabd),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.tune_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
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
                        Container(
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
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
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular",
                      style: TextStyle(
                        color: Color(0xff26273b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "see All",
                      style: TextStyle(
                        color: Color(0xffacadc1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Stack(
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
                                  "images/plant3.jpg",
                                  width: MediaQuery.of(context).size.width / 2 -
                                      25,
                                ),
                                const Text("Samabaia Plant",
                                    // textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: Color(0xff26273b),
                                      fontWeight: FontWeight.w600,
                                    )),
                                const Text(
                                  "\$45,50",
                                  style: TextStyle(
                                    color: Color(0xff6f708b),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "There are many",
                                  style: TextStyle(
                                    color: Color(0xffacadc1),
                                    // fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, right: 8),
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
                                !isLiked
                                    ? "icons/heart.png"
                                    : "icons/red_heart.png",
                                scale: 2.95,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "images/plant5.jpg",
                                  width: MediaQuery.of(context).size.width / 2 -
                                      25,
                                ),
                                const Text("Eucalipto Plant",
                                    style: TextStyle(
                                      color: Color(0xff26273b),
                                      fontWeight: FontWeight.w600,
                                    )),
                                const Text(
                                  "\$60,00",
                                  style: TextStyle(
                                    color: Color(0xff6f708b),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "There are many",
                                  style: TextStyle(
                                    color: Color(0xffacadc1),
                                    // fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, right: 8),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xffbedabd),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "icons/heart.png",
                              scale: 2.95,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Recomended",
                      style: TextStyle(
                        color: Color(0xff26273b),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "see All",
                      style: TextStyle(
                        color: Color(0xffacadc1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Image.asset(
                          "images/plant2.jpg",
                          width: MediaQuery.of(context).size.width / 4 - 20,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Image.asset(
                          "images/plant7.jpg",
                          width: MediaQuery.of(context).size.width / 4 - 20,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Image.asset(
                          "images/plant8.png",
                          width: MediaQuery.of(context).size.width / 4 - 20,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Image.asset(
                          "images/plant3.jpg",
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
