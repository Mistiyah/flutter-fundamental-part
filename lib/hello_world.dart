import 'package:belajarflutter/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class HelloWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter'),
      ),
      body: const Center(
        child: Text('Hello Word'),
      ),
    );
  }
}
