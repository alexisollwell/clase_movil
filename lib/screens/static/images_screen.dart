import 'package:clase_movil/components/section_title.dart';
import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imágenes Estáticas'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Carga y manejo de Imágenes',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 30),

              const SectionTitle(title: '1. Image.asset Básico'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('La forma más sencilla de cargar una imagen.'),
              ),
              Center(
                child: Image.asset('assets/images/60a6e2b0776d1d6735fce5ae7dc9b175.jpg'),
              ),

              const SectionTitle(title: '2. BoxFit.cover'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Recorta la imagen para llenar todo el espacio del contenedor.'),
              ),
              Center(
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/landscape_photography_tips_featured_image.jpg.webp',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SectionTitle(title: '3. BoxFit.contain'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Asegura que toda la imagen sea visible sin recortarla.'),
              ),
              Center(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Image.asset(
                    'assets/images/GettyImages-2253869134.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SectionTitle(title: '4. Bordes Redondeados (ClipRRect)'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Usa ClipRRect para redondear las esquinas de una imagen.'),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/b80378993da7282e58b35bdd3adbce89.jpg'),
                ),
              ),

              const SectionTitle(title: '5. DecorationImage en un Container'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Coloca una imagen como fondo de un Container.'),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/selva-tropical-hermosa-en-el-sendero-de-ka-del-ang-36703721.jpg.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Texto sobre imagen',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [Shadow(color: Colors.black, blurRadius: 10)],
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
