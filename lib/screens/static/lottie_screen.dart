import 'package:clase_movil/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatefulWidget {
  const LottieScreen({super.key});

  @override
  State<LottieScreen> createState() => _LottieScreenState();
}

class _LottieScreenState extends State<LottieScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animaciones Lottie'),
        backgroundColor: Colors.deepPurple[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Uso de Lottie (JSON)',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 20),

              const SectionTitle(title: '1. Lottie Básico (Loop)'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Carga un archivo JSON de Lottie que se repite infinitamente por defecto.'),
              ),
              Center(
                child: Lottie.asset(
                  'assets/jsons/fa3d583e-1171-11ee-894a-4f0a266bd6de.json',
                  height: 200,
                ),
              ),

              const SectionTitle(title: '2. Lottie sin Loop'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Animación que se reproduce una sola vez (repeat: false).'),
              ),
              Center(
                child: Lottie.asset(
                  'assets/jsons/952b032d-67e9-4716-81c0-6bfbfddb5b18.json',
                  height: 200,
                  repeat: false,
                ),
              ),

              const SectionTitle(title: '3. Lottie Controlado Manualmente'),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Uso de un AnimationController para pausar/reproducir.'),
              ),
              Center(
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/jsons/a833c0f0-9779-4abb-bb5f-0ae1b04cc731.json',
                      height: 200,
                      controller: _controller,
                      onLoaded: (composition) {
                        _controller.duration = composition.duration;
                      },
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => _controller.forward(),
                          icon: const Icon(Icons.play_arrow),
                          label: const Text('Play'),
                        ),
                        ElevatedButton.icon(
                          onPressed: () => _controller.stop(),
                          icon: const Icon(Icons.pause),
                          label: const Text('Pause'),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            _controller.reset();
                            _controller.forward();
                          },
                          icon: const Icon(Icons.replay),
                          label: const Text('Restart'),
                        ),
                      ],
                    ),
                  ],
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
