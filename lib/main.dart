import 'package:flutter/material.dart';
import 'package:saranya_portfolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SARANYA K',
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
