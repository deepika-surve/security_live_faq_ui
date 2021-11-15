import 'package:flutter/material.dart';
import 'security_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecurityScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
