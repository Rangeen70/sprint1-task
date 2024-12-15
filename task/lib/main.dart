import 'package:flutter/material.dart';
import 'package:task/onboardscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const OnboardScreen(),
    );
  }
}
