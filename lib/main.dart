// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/displayScreen.dart';
import 'package:flutter_application_1/screens/homeScreen.dart';
import 'package:flutter_application_1/screens/signupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fish App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
