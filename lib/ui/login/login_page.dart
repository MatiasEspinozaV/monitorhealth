import 'package:flutter/material.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bienvenido a MonitorHealth')),
      body: const Padding(
        padding: EdgeInsets.all(40.0),
        child: LoginForm(),
      ),
    );
  }
}
