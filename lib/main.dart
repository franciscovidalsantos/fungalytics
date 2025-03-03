import 'package:flutter/material.dart';
import 'package:fungalytics/screens/home_screen.dart';

void main() {
  runApp(const FungalyticsApp());
}

class FungalyticsApp extends StatelessWidget {
  const FungalyticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
