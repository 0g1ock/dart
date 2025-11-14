import 'package:flutter/material.dart';
import 'dostavka_Screen.dart';
import 'prodaja_Screen.dart';
import 'skupka_Screen.dart';

void main() => runApp(MaterialApp(home: MainApp()));

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0; // Добавляем состояние для текущего индекса
  void onBottomNavItemTap(index) {
    setState(() {
      currentIndex = index;
    });

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DostavkaScreen()),
      );
    }

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (c) { return ProdajaScreen(); }),
      );
    }

    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SkupkaScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 179, 219),
        title: Text('TraidCompany'),
        centerTitle: true,
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onBottomNavItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'доставка',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'продажа'),
          BottomNavigationBarItem(icon: Icon(Icons.computer), label: 'скупка'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {     print("click");    }  ,
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}
