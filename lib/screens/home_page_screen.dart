import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});
  @override
  State<HomePageScreen> createState() {
    return _HomePageScreenState();
  }
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome to Fungalytics!",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
