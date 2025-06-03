import 'package:flutter/material.dart';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';

class BluetoothButton extends StatelessWidget {
  final BuildContext context;
  const BluetoothButton({super.key, required this.context});

  Future<void> handleBluetooth() async {
    if (await Permission.bluetooth.request().isGranted) {
      // Mostrar cuadro de carga
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      // Simular sincronización de 2 Seg
      await Future.delayed(const Duration(seconds: 2));

      // Cerrar el cuadro de carga
      Navigator.of(context).pop();

      // Mostrar mensaje de Vinculacion
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text("Sincronización exitosa con el dispositivo BLE"),
          duration: Duration(seconds: 2),
        ),
      );

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Permiso de Bluetooth denegado"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.bluetooth),
      label: const Text('Sincronizar BLE'),
      onPressed: () => handleBluetooth(),
    );
  }
}
