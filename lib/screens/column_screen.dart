import 'package:clase_movil/components/column_item.dart';
import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Widget'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.grey[100],
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Ejemplo de Column',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ColumnItem(color: Colors.blue[300], text: 'Elemento 1'),
            ColumnItem(color: Colors.green[300], text: 'Elemento 2'),
            ColumnItem(color: Colors.orange[300], text: 'Elemento 3'),
            const Card(
              margin: EdgeInsets.only(top: 20),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'El widget Column organiza sus hijos verticalmente. '
                  'Puedes controlar su alineación con MainAxisAlignment y CrossAxisAlignment.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
