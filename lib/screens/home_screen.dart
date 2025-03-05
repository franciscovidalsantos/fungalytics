import 'package:flutter/material.dart';
import 'package:fungalytics/screens/collection_page_screen.dart';
import 'package:fungalytics/screens/home_page_screen.dart';
import 'package:fungalytics/screens/scan_page_screen.dart';
import 'package:fungalytics/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  final List<Widget> _pages = <Widget>[
    ScanPageScreen(),
    HomePageScreen(),
    CollectionPageScreen(),
  ];

  void _openSettingsScreen() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => SettingsScreen(),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: _openSettingsScreen,
          ),
        ],
        title: Text("Fungalytics", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 109, 50, 50),
      ),
      extendBodyBehindAppBar: true,
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 31, 19, 19),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lens_blur_outlined),
            label: "Scan",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_rounded),
            label: "Collection",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
