import 'package:flutter/material.dart';

class CustomBarItem extends StatelessWidget {
  final String text;
  final IconData icon;
  // final bool isSelected;

  const CustomBarItem({
    key,
    required this.text,
    required this.icon,
    // required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            // color:
            // isSelected ? const Color(0xffCE1567) : const Color(0x0fffffff),
          ),
          Text(text),
        ],
      ),
    );
  }
}
