import 'package:clase_movil/components/section_title.dart';
import 'package:flutter/material.dart';

class GifsScreen extends StatelessWidget {
  const GifsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GIFs Animados'),
        backgroundColor: Colors.pink[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Manejo de GIFs',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text('En Flutter, los GIFs se cargan exactamente igual que las imágenes normales usando Image.asset().'),
              const SizedBox(height: 20),

              const SectionTitle(title: '1. GIF Básico'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Uso directo de Image.asset para mostrar la animación.'),
              ),
              Center(
                child: Image.asset('assets/images/kOnzy.gif'),
              ),

              const SectionTitle(title: '2. GIF con forma (ClipRRect)'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Podemos aplicar bordes redondeados al GIF.'),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/00ade57d293e6fbbfea884580e148b92.gif'),
                ),
              ),

              const SectionTitle(title: '3. GIF con tamaño controlado'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Limitando el ancho y alto del GIF.'),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink, width: 4),
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/kOnzy.gif',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
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
