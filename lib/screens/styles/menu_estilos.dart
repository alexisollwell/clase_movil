import 'package:flutter/material.dart';
import 'package:clase_movil/components/menu_item.dart';
import 'package:clase_movil/screens/styles/text_styles_screen.dart';
import 'package:clase_movil/screens/styles/theme_styles_screen.dart';
import 'package:clase_movil/screens/styles/custom_containers_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuEstilosScreen extends StatelessWidget {
  const MenuEstilosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estilos y Personalización', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MenuItem(
            title: 'Estilos de Letra y Fuentes',
            subtitle: 'Google Fonts y TextStyles',
            icon: Icons.font_download,
            color: Colors.pink,
            screen: const TextStylesScreen(),
          ),
          MenuItem(
            title: 'Temas de Aplicación',
            subtitle: 'Modo Claro/Oscuro y Colores',
            icon: Icons.color_lens,
            color: Colors.deepPurple,
            screen: const ThemeStylesScreen(),
          ),
          MenuItem(
            title: 'Contenedores Avanzados',
            subtitle: 'Gradientes, sombras y formas',
            icon: Icons.format_paint,
            color: Colors.indigo,
            screen: const CustomContainersScreen(),
          ),
        ],
      ),
    );
  }
}
