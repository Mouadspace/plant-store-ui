import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: TextField(
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
              contentPadding:
                  EdgeInsets.all(8), // and add this dended the textfeild
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
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
    );
  }
}
