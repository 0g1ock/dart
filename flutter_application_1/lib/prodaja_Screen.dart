import 'package:flutter/material.dart';

class ProdajaScreen extends StatelessWidget {
  const ProdajaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('продажа'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
       // onTap: onBottomNavItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'доставка',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: 'продажа',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'скупка',
          ),
        ],
      ),
      body: const Center(
        child: Text('Экран продажи'),
      ),
    );
  }
}