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
        MaterialPageRoute(builder: (context) => ProdajaScreen()),
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
      backgroundColor: const Color.fromARGB(255, 209, 209, 209),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 187, 90, 216),
        title: Text('TraidCompany - "Гарантия качества во всех операциях"'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onBottomNavItemTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Courses'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Mail',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Icon(
                    Icons.delivery_dining,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    size: 40.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DostavkaScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Доставка',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Icon(
                    Icons.archive,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    size: 40.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProdajaScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Продажа',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Icon(
                    Icons.computer,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    size: 40.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SkupkaScreen()),
                      );
                    },
                    child: Text(
                      'Скупка',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
