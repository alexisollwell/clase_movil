import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final Color color;
  final bool isDarkMode;
  final Color selectedColor;
  final VoidCallback onTap;

  const ColorButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.selectedColor,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    Color markerColor = isDarkMode ? Colors.white : Colors.black;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: selectedColor == color ? markerColor : Colors.transparent,
            width: 3,
          ),
        ),
      ),
    );
  }
}
