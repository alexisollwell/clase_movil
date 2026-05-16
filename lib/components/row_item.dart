import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  const RowItem({super.key, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color!.withValues(alpha: 0.4),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Icon(icon, color: Colors.white, size: 40),
    );
  }
}
