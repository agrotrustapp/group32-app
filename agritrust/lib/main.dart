import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Replace with your actual screen imports

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agritrust',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(), // Replace with your initial screen
    );
  }
}
