import 'package:clase_movil/components/menu_card.dart';
import 'package:clase_movil/practice/menu_practice.dart';
import 'package:flutter/material.dart';
import 'package:clase_movil/screens/layout/menu_layout.dart';
import 'package:clase_movil/screens/styles/menu_estilos.dart';
import 'package:clase_movil/screens/static/menu_static.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMenuScreen extends StatelessWidget {
  const HomeMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menú Principal',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.deepPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              MenuCard(
                title: 'Layouts y Contenedores',
                subtitle: 'Aprende a organizar widgets',
                icon: Icons.dashboard_customize_rounded,
                color1: Colors.blueAccent,
                color2: Colors.indigo,
                targetScreen: const MainMenuScreen(), // Existing layout menu
              ),
              const SizedBox(height: 20),
              MenuCard(
                title: 'Estilos y Personalización',
                subtitle: 'Fuentes, temas y decoraciones',
                icon: Icons.color_lens_rounded,
                color1: Colors.pinkAccent,
                color2: Colors.purple,
                targetScreen: const MenuEstilosScreen(), // New styles menu
              ),
              const SizedBox(height: 20),
              MenuCard(
                title: 'Practicas en clase',
                subtitle: 'Ejercicios y ejemplos',
                icon: Icons.work_outline_rounded,
                color1: Colors.yellow,
                color2: Colors.orange,
                targetScreen: const MenuPracticeScreen(), // New styles menu
              ),
              const SizedBox(height: 20),
              MenuCard(
                title: 'Elementos Estáticos',
                subtitle: 'Imágenes, animaciones y audio',
                icon: Icons.perm_media_rounded,
                color1: Colors.teal,
                color2: Colors.green,
                targetScreen: const MenuStaticScreen(),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
