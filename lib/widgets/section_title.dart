import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff26273b),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          "see All",
          style: TextStyle(
            color: Color(0xffacadc1),
          ),
        ),
      ],
    );
  }
}
