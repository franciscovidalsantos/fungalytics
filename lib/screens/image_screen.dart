import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final String imageUrl;

  const ImageScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Center(
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 10,
            child: Stack(
              children: [
                Image.network(
                  imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: const Color.fromARGB(255, 109, 50, 50),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                    child: Center(
                      child: Text(
                        "Mushroom species",
                        style: TextStyle(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
