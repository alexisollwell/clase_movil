import 'package:clase_movil/components/row_item.dart';
import 'package:flutter/material.dart';

class MixColumnRowScreen extends StatelessWidget {
  const MixColumnRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mix Column y Row'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RowItem(color: Colors.red[300], icon: Icons.home),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RowItem(color: Colors.red[300], icon: Icons.home),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RowItem(color: Colors.red[300], icon: Icons.home),
            ],
          )
        ],
      ),
    );
  }
}