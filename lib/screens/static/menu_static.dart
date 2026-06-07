import 'package:flutter/material.dart';
import 'package:clase_movil/components/menu_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clase_movil/screens/static/images_screen.dart';
import 'package:clase_movil/screens/static/gifs_screen.dart';
import 'package:clase_movil/screens/static/lottie_screen.dart';
import 'package:clase_movil/screens/static/instagram_gallery_screen.dart';
import 'package:clase_movil/screens/static/audio_player_screen.dart';
import 'package:clase_movil/screens/static/local_fonts_screen.dart';

class MenuStaticScreen extends StatelessWidget {
  const MenuStaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elementos Estáticos', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MenuItem(
            title: 'Imágenes Estáticas',
            subtitle: 'Carga y display de JPG/PNG/WEBP',
            icon: Icons.image,
            color: Colors.blue,
            screen: const ImagesScreen(),
          ),
          MenuItem(
            title: 'GIFs Animados',
            subtitle: 'Animaciones con archivos GIF',
            icon: Icons.animation,
            color: Colors.pink,
            screen: const GifsScreen(),
          ),
          MenuItem(
            title: 'Animaciones Lottie',
            subtitle: 'Animaciones JSON interactivas',
            icon: Icons.movie_creation,
            color: Colors.deepPurple,
            screen: const LottieScreen(),
          ),
          MenuItem(
            title: 'Galería Instagram',
            subtitle: 'Feed de fotos estilo Instagram',
            icon: Icons.photo_library,
            color: Colors.orange,
            screen: const InstagramGalleryScreen(),
          ),
          MenuItem(
            title: 'Reproductor de Audio',
            subtitle: 'Reproducir música/canciones',
            icon: Icons.library_music,
            color: Colors.red,
            screen: const AudioPlayerScreen(),
          ),
          MenuItem(
            title: 'Tipografías Locales',
            subtitle: 'Fuentes .ttf desde assets',
            icon: Icons.text_fields,
            color: Colors.indigo,
            screen: const LocalFontsScreen(),
          ),
        ],
      ),
    );
  }
}
