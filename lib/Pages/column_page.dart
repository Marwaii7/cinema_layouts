import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Layout 🍿")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.movie, size: 60, color: Colors.orange),
          Icon(Icons.movie, size: 60, color: Colors.purple),
          Icon(Icons.movie, size: 60, color: Colors.teal),
        ],
      ),
    );
  }
}
