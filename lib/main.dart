import 'package:flutter/material.dart';
import 'pages/row_page.dart';
import 'pages/column_page.dart';
import 'pages/stack_page.dart';
import 'pages/grid_page.dart';

void main() {
  runApp(const CinemaApp());
}

class CinemaApp extends StatelessWidget {
  const CinemaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinema Layouts',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black87,
        primaryColor: Colors.redAccent,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🎬 Cinema Layouts"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MovieButton(
            title: "Row Layout 🎥",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RowPage()),
              );
            },
          ),
          MovieButton(
            title: "Column Layout 🍿",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ColumnPage()),
              );
            },
          ),
          MovieButton(
            title: "Stack Layout 🎞️",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const StackPage()),
              );
            },
          ),
          MovieButton(
            title: "Grid Layout 🎟️",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const GridPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MovieButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const MovieButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: Colors.redAccent, // لون المربع
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // النص الأبيض واضح
              ),
            ),
          ),
        ),
      ),
    );
  }
}
