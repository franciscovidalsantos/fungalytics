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

  void _resetPageState() {
    // Reset page state when we want to load a new image
    setState(() => _pages[0] = ScanPageScreen(key: UniqueKey()));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _appBarButton() {
    IconButton selectedButton =
        _selectedIndex == 0
            ? IconButton(
              icon: Icon(Icons.restart_alt),
              onPressed: _resetPageState,
            )
            : IconButton(
              icon: Icon(Icons.settings),
              onPressed: _openSettingsScreen,
            );
    return selectedButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [_appBarButton()], title: Text("Fungalytics")),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: IndexedStack(index: _selectedIndex, children: _pages),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
