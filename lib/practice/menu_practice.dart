import 'package:clase_movil/practice/practice_1.dart';
import 'package:flutter/material.dart';
import 'package:clase_movil/components/menu_item.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPracticeScreen extends StatelessWidget {
  const MenuPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practicas', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MenuItem(
            title: 'Practica 1',
            subtitle: 'Pantalla de login',
            icon: Icons.font_download,
            color: Colors.pink,
            screen: const Practice1(),
          )
        ],
      ),
    );
  }
}
