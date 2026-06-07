import 'package:clase_movil/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocalFontsScreen extends StatelessWidget {
  const LocalFontsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipografías Locales'),
        backgroundColor: Colors.indigo[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Manejo de Fuentes',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 10),
              const Text('Las fuentes locales se declaran en pubspec.yaml y se usan con fontFamily en el TextStyle.'),
              const SizedBox(height: 20),

              const SectionTitle(title: '1. Fuente del Sistema'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('La tipografía estándar del dispositivo.'),
              ),
              const Center(
                child: Text(
                  'El veloz murciélago hindú comía feliz cardillo y kiwi.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),

              const SectionTitle(title: '2. Fuente Local (Pacifico.ttf)'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Cargada desde assets/fonts/.'),
              ),
              const Center(
                child: Text(
                  'El veloz murciélago hindú comía feliz cardillo y kiwi.',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 24,
                    color: Colors.indigo,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SectionTitle(title: '3. Google Fonts'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Se descarga bajo demanda o se incluye en el build.'),
              ),
              Center(
                child: Text(
                  'El veloz murciélago hindú comía feliz cardillo y kiwi.',
                  style: GoogleFonts.dancingScript(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  textAlign: TextAlign.center,
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
