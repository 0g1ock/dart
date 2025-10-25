import 'package:flutter/material.dart';
import 'dostavka_Screen.dart';
import 'hranenie_Screen.dart';
import 'skupka_Screen.dart';


void main() {
  runApp(const MaterialApp(home:MainApp()));
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan,
        appBar: AppBar(
      backgroundColor: Colors.cyan,
    title: Text('ПРОДАЖА УСЛУГ'),
    centerTitle: true,
       ),
        floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.grey[300],
        ),
        body: Center(child:  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      children: [
        Container(
         
          child: Icon(
  Icons.delivery_dining, // Иконка доставки
  color: const Color.fromARGB(255, 0, 0, 0),
  size: 40.0,
),
        ),
        Container(
          margin: EdgeInsets.all(16.0),
          child:     ElevatedButton(
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => DostavkaScreen(), // Передача счетчика как параметра
                  ),
                );
            },
            child: Text('Доставка', style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Container(
          child: Icon(
  Icons.archive, // Иконка доставки
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
                  MaterialPageRoute<void>(
                    builder: (context) => HranenieScreen(), // Передача счетчика как параметра
                  ),
                );
            },
            child: Text('Хранение', style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Container(
          child: Icon(
  Icons.attach_money, // Иконка доставки
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
                  MaterialPageRoute<void>(
                    builder: (context) => SkupkaScreen(), // Передача счетчика как параметра
                  ),
                );
            },
            child: Text('Скупка', style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    ),
  ],
        ))
      
    );
  }
}
