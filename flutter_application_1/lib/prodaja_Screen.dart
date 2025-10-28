import 'package:flutter/material.dart';

class ProdajaScreen extends StatelessWidget {
  const ProdajaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('продажа'),
      ),
      body: const Center(
        child: Text('Экран продажи'),
      ),
    );
  }
}