import "package:flutter/material.dart";
import "package:mobile_web_service_praktik/screen/profile_screen.dart";

import "home_screen.dart";
import "product_screen.dart";

class Navigasi extends StatefulWidget {
  const Navigasi({super.key});

  @override
  State<Navigasi> createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  int _selectedIndex = 0;

  void _navigasiBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [HomePage(), const ProductPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigasiBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
