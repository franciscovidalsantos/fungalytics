import 'package:flutter/material.dart';

class ScanPageScreen extends StatefulWidget {
  const ScanPageScreen({super.key});
  @override
  State<ScanPageScreen> createState() {
    return _ScanPageScreenState();
  }
}

class _ScanPageScreenState extends State<ScanPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Text("scan"))],
        ),
      ),
    );
  }
}
