import 'package:agritrust/screens/home_page.dart';
import 'package:flutter/material.dart';
// Replace with your actual screen imports

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agritrust',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(), // Replace with your initial screen
    );
  }
}
