import 'package:flutter/material.dart';
import 'package:my_ideas_app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const App(),
      theme: ThemeData(
        focusColor: Colors.grey[800],
        hintColor: Colors.white,
        primaryColor: Colors.grey[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
    );
  }
}
