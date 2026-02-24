import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const JokeBoxApp());
}

class JokeBoxApp extends StatelessWidget {
  const JokeBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'JokeBox Toolkit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
