import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 195, 184, 252),
        title: const Text(
          'Yujin\'s Tech blog',
          style: TextStyle(
            color: Color.fromARGB(255, 48, 40, 9),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
