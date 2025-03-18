import 'package:flutter/material.dart';

class CollectionPageScreen extends StatefulWidget {
  const CollectionPageScreen({super.key});
  @override
  State<CollectionPageScreen> createState() {
    return _CollectionPageScreenState();
  }
}

class _CollectionPageScreenState extends State<CollectionPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Text("Collection"))],
        ),
      ),
    );
  }
}
