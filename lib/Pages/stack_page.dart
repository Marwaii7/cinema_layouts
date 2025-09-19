import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Layout 🎞️")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250,
              height: 150,
              color: Colors.black,
            ),
            const Icon(Icons.play_circle_fill,
                size: 80, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
