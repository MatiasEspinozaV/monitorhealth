import 'package:flutter/material.dart';

class StepCountWidget extends StatelessWidget {
  const StepCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulación de cantidad de pasos
    final steps = 7850;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.directions_walk, size: 80, color: Colors.blue),
        const SizedBox(height: 20),
        Text(
          '$steps pasos',
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
