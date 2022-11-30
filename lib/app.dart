import 'package:calculator_mk/calculator.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black
      ),
      home: const Calculator(),
    );
  }
}