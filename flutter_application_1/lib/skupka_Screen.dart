import 'package:flutter/material.dart';

class SkupkaScreen extends StatelessWidget {
  const SkupkaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Скупка'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
       // onTap: onBottomNavItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Mail',
          ),
        ],
      ),
      body: const Center(
        child: Text('Экран Скупки'),
      ),
    );
  }
}