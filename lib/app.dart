import 'package:flutter/material.dart';
import 'ui/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        fontFamily: 'AntonSC',
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginPage(),
    );
  }
}
