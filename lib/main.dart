import 'package:flutter/material.dart';
import 'package:travel/screens/page_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageViewScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


