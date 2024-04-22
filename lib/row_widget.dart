import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Row'),
      ),
      body: const Row(
        children: [
          Text('Row 1'),
          Text('Row 2'),
          Text('Row 3'),
          Text('Row 4')
        ],
      ),
    );
  }
}