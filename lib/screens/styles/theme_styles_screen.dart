import 'package:clase_movil/components/color_button.dart';
import 'package:flutter/material.dart';

class ThemeStylesScreen extends StatefulWidget {
  const ThemeStylesScreen({super.key});

  @override
  State<ThemeStylesScreen> createState() => _ThemeStylesScreenState();
}

class _ThemeStylesScreenState extends State<ThemeStylesScreen> {
  bool _isDarkMode = false;
  Color _primaryColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    void changeTheme(Color color) {
      setState(() {
        _primaryColor = color;
      });
    }

    void changeThemeBrightness() {
      setState(() {
        _isDarkMode = !_isDarkMode;
      });
    }

    return Theme(
      data: ThemeData(
        brightness: _isDarkMode ? Brightness.dark : Brightness.light,
        primaryColor: _primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColor,
          brightness: _isDarkMode ? Brightness.dark : Brightness.light,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: _primaryColor,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Temas de Aplicación')),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'Esta pantalla usa un Widget Theme para sobreescribir el tema general y aplicar uno local.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Controles del Tema Local',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SwitchListTile(
                      title: const Text('Modo Oscuro'),
                      value: _isDarkMode,
                      onChanged: (val) {
                        changeThemeBrightness();
                      },
                    ),
                    const SizedBox(height: 10),
                    const Text('Cambiar Color Primario:'),
                    Wrap(
                      spacing: 10,
                      children: [
                        ColorButton(
                          color: Colors.deepPurple,
                          isDarkMode: _isDarkMode,
                          onTap: () => changeTheme(Colors.deepPurple),
                          selectedColor: _primaryColor,
                        ),
                        ColorButton(
                          color: Colors.red,
                          isDarkMode: _isDarkMode,
                          onTap: () => changeTheme(Colors.red),
                          selectedColor: _primaryColor,
                        ),
                        ColorButton(
                          color: Colors.green,
                          isDarkMode: _isDarkMode,
                          onTap: () => changeTheme(Colors.green),
                          selectedColor: _primaryColor,
                        ),
                        ColorButton(
                          color: Colors.orange,
                          isDarkMode: _isDarkMode,
                          onTap: () => changeTheme(Colors.orange),
                          selectedColor: _primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Botón con el Tema Actual'),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
