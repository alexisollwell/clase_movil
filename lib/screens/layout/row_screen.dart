import 'package:clase_movil/components/row_item.dart';
import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.grey[50],
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Ejemplo de Row',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RowItem(color: Colors.red[300], icon: Icons.home),
                RowItem(color: Colors.teal[300], icon: Icons.star),
                RowItem(color: Colors.amber[300], icon: Icons.person),
              ],
            ),
            const SizedBox(height: 50),
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      '¿Qué es un Row?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'El widget Row organiza sus hijos horizontalmente. '
                      'Es fundamental para crear barras de navegación, botones en línea '
                      'y distribuciones de contenido lado a lado.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
