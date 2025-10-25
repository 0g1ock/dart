import 'package:flutter/material.dart';

class HranenieScreen extends StatelessWidget {
  const HranenieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Хранение'),
      ),
      body: const Center(
        child: Text('Экран хранения'),
      ),
    );
  }
}