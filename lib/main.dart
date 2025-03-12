import 'package:flutter/material.dart';
import 'package:fungalytics/screens/home_screen.dart';
import 'package:fungalytics/theme/fungalytics_theme.dart';

void main() {
  runApp(const FungalyticsApp());
}

class FungalyticsApp extends StatelessWidget {
  const FungalyticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FungalyticsTheme.lightTheme,
      darkTheme: FungalyticsTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}
