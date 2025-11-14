import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ProdajaScreen extends StatelessWidget {
  const ProdajaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Продажа'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.delivery_dining), label: 'Доставка'),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'Продажа'),
          BottomNavigationBarItem(icon: Icon(Icons.computer), label: 'Скупка'),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 4, 216, 231), Color.fromARGB(255, 15, 42, 197)],
          ),
        ),
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Экран продажи', 
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: const Color.fromARGB(255, 93, 0, 255),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  onDaySelected: (x, y) { print(x); print(y); },
                  headerStyle: const HeaderStyle(formatButtonVisible: false),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}