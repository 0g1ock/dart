import 'package:flutter/material.dart';

class DostavkaScreen extends StatelessWidget {
  const DostavkaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Доставка'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
        child: Text('Экран доставки'),
      ),
    );
  }
}