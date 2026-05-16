import 'package:flutter/material.dart';

class ColumnItem extends StatelessWidget {
  final Color? color;
  final String text;
  const ColumnItem({super.key, this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
