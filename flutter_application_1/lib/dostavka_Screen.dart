import 'package:flutter/material.dart';

class DostavkaScreen extends StatelessWidget {
  const DostavkaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Доставка'),
      ),
      body: const Center(
        child: Text('Экран доставки'),
      ),
    );
  }
}