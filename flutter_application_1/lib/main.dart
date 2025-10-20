import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
    title: Text('ПРОДАЖА УСЛУГ'),
    centerTitle: true,
       ),
        floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.grey[300],
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Container(child: Text('ДОСТАВКА')),
                Container(child: Text('ХРАНЕНИЕ')),
                Container(child: Text('СКУПКА')),
            ], 
          ) ,
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.large(onPressed: () {},
              
              child:
                 Text(
                "Перейти", style:
                TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0)
                ),
              )),
              FloatingActionButton(
                isExtended:true,
                onPressed: () {print('1223');}, child:
              Text(
                "Перейти", style:
                TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0)
                ),
              )),
              FloatingActionButton(onPressed: () {print('1223');}, child:
              Text(
                "Перейти", style:
                TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0)
                ),
              )),
              FloatingActionButton(onPressed: () {print('1223');}, child:
              Text(
                "Перейти", style:
                TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0)
                ),
              )),
            ],
          )
        ]),
      ),
    );
  }
}
