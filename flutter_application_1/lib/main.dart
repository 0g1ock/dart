import 'package:flutter/material.dart';
import 'dostavka_Screen.dart';
import 'prodaja_Screen.dart';
import 'skupka_Screen.dart';


void main() {
  runApp(const MaterialApp(home:MainApp()));
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 209, 209),
        appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 187, 90, 216),
    title: Text('TraidCompany - "Гарантия качества во всех операциях"'),
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
                    builder: (context) => ProdajaScreen(), // Передача счетчика как параметра
                  ),
                );
            },
            child: Text('Продажа', style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Container(
          child: Icon(
  Icons.computer, // Иконка продажи
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
