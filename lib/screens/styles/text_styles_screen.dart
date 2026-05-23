import 'package:clase_movil/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStylesScreen extends StatelessWidget {
  const TextStylesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estilos de Letra', style: GoogleFonts.poppins()),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SectionTitle(title: 'Fuentes Nativas (TextStyle)'),
          const Text(
            'Texto con tamaño 24 y negrita',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Texto itálico y color primario',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Texto con espaciado entre letras (letterSpacing)',
            style: TextStyle(fontSize: 18, letterSpacing: 3.0),
          ),
          const SizedBox(height: 10),
          const Text(
            'Texto con sombra (Shadow)',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
              shadows: [
                Shadow(
                  color: Colors.black45,
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Texto Subrayado y Tachado',
            style: TextStyle(
              fontSize: 18,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          const Divider(height: 40, thickness: 2),

          const SectionTitle(title: 'Google Fonts'),
          Text(
            'Fuente: Pacifico',
            style: GoogleFonts.pacifico(fontSize: 28, color: Colors.teal),
          ),
          const SizedBox(height: 10),
          Text(
            'Fuente: Roboto Mono (Ideal para código)',
            style: GoogleFonts.robotoMono(
              fontSize: 18,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Fuente: Oswald (Elegante y alta)',
            style: GoogleFonts.oswald(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Fuente: Dancing Script (Cursiva)',
            style: GoogleFonts.dancingScript(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
