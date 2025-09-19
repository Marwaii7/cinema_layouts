import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row Layout 🎥")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.chair, size: 60, color: Colors.red),
            Icon(Icons.chair, size: 60, color: Colors.green),
            Icon(Icons.chair, size: 60, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
