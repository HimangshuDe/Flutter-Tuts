import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 250,
            ),
            const SizedBox(height: 50),
            Text(
              "Learn Flutter the fun way!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple[200],
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text("Start Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
