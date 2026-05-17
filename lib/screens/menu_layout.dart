import 'package:clase_movil/components/menu_item.dart';
import 'package:clase_movil/screens/column_screen.dart';
import 'package:clase_movil/screens/container_properties_screen.dart';
import 'package:clase_movil/screens/mix_column_row_screen.dart';
import 'package:clase_movil/screens/row_screen.dart';
import 'package:clase_movil/screens/stack_screen.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts y Contenedores'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MenuItem(
            title: 'Column Widget',
            subtitle: 'Organización Vertical',
            icon: Icons.view_column,
            color: Colors.deepPurple,
            screen: const ColumnScreen(),
          ),
          MenuItem(
            title: 'Row Widget',
            subtitle: 'Organización Horizontal',
            icon: Icons.view_headline,
            color: Colors.indigo,
            screen: const RowScreen(),
          ),
          MenuItem(
            title: 'Mix Column y Row',
            subtitle: 'Organización Horizontal y Vertical',
            icon: Icons.voice_chat,
            color: Colors.orange,
            screen: const MixColumnRowScreen(),
          ),
          MenuItem(
            title: 'Stack Widget',
            subtitle: 'Superposición de Elementos',
            icon: Icons.layers,
            color: Colors.pink,
            screen: const StackScreen(),
          ),
          MenuItem(
            title: 'Container Properties',
            subtitle: 'Estilos y Decoración',
            icon: Icons.check_box_outline_blank,
            color: Colors.teal,
            screen: const ContainerPropertiesScreen(),
          ),
        ],
      ),
    );
  }
}
