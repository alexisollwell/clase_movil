import 'package:clase_movil/components/section_title.dart';
import 'package:flutter/material.dart';

class ContainerPropertiesScreen extends StatelessWidget {
  const ContainerPropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Propiedades del Contenedor'),
        backgroundColor: Colors.teal[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Personalización de Container',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 30),

              SectionTitle(title: '1. Margen y Relleno (Margin & Padding)'),
              Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(30),
                  color: Colors.amber[100],
                  child: Container(
                    color: Colors.amber[600],
                    padding: const EdgeInsets.all(10),
                    child: const Text('Contenido con Padding y Margin'),
                  ),
                ),
              ),

              SectionTitle(title: '2. Decoración y Bordes (Decoration)'),
              Center(
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.teal, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal.withValues(alpha: 0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(child: Text('Bordes y Sombras')),
                ),
              ),

              SectionTitle(title: '3. Gradientes (Gradients)'),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [Colors.teal, Colors.cyan, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Fondo con Gradiente',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
