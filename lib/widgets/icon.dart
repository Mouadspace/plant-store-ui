import 'package:flutter/material.dart';

class IconStateFull extends StatefulWidget {
  const IconStateFull({Key? key, required this.next}) : super(key: key);
  final IconData next;
  @override
  State<IconStateFull> createState() => _IconStateFullState();
}

class _IconStateFullState extends State<IconStateFull> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff0f0f5),
        borderRadius: BorderRadius.circular(50),
      ),
      width: 40,
      height: 40,
      child: GestureDetector(
        onTap: () {
          _isClicked = !_isClicked;
          Navigator.pop(context);
          setState(() {});
        },
        child: Icon(
          _isClicked ? widget.next : Icons.arrow_back_ios_new_rounded,
        ),
      ),
    );
  }
}
