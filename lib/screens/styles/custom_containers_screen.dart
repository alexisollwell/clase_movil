import 'package:flutter/material.dart';

class CustomContainersScreen extends StatelessWidget {
  const CustomContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contenedores Avanzados'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Gradiente Lineal y Bordes Redondeados', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Container(
            height: 150,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.purple, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(5, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const Text('Gradient Container', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          
          const SizedBox(height: 30),
          const Text('Gradiente Radial y Forma Circular', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.yellow, Colors.orange, Colors.red],
                  stops: [0.3, 0.6, 1.0],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: const Text('Radial', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            ),
          ),

          const SizedBox(height: 30),
          const Text('Bordes Asimétricos y Neumorfismo (Sombra doble)', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              boxShadow: [
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: Colors.grey[500]!,
                  offset: const Offset(5, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const Text('Neumorfismo', style: TextStyle(color: Colors.black54, fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
