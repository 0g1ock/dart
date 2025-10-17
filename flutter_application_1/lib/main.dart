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
        floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.grey[300],
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Container(child: Text('олег')),
                Container(child: Text('и')),
                Container(child: Text('вовка')),
            ], 
          )    ,
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(child: Text('олег'), color: Colors.red,),
                Container(child: Text('и')),
                Container(child: Text('вовка'),color: const Color.fromARGB(255, 54, 222, 244),),
            ], 
          ),  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Container(child: Text('олег')),
                Container(child: Text('и')),
                Container(child: Text('вовка')),
            ], 
          ) ,
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
               backgroundImage: NetworkImage('https://example.com/your_image.png'), 
              ),
              FloatingActionButton(onPressed: () {print('1223');}, child:
              Text(
                "Привет", style:
                TextStyle(
                  color: const Color.fromARGB(255, 2, 161, 240)
                ),
              )),
                FloatingActionButton(onPressed: () {print('1223');}, child:
                Text(
                  "Пока", style:
                  TextStyle(color: Colors.lightGreenAccent) ,
                ),
              ) ,
            ],
          )
        ]),
      ),
    );
  }
}
