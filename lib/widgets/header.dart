import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        ),
      ],
    );
  }
}
