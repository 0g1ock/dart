import 'package:flutter/material.dart';

class SkupkaScreen extends StatelessWidget {
  const SkupkaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Скупка'),
      ),
      body: const Center(
        child: Text('Экран Скупки'),
      ),
    );
  }
}