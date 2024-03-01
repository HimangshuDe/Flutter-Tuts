import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "home-screen";

  // Adding the switchScreen function. #1 way
  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'home-screen'
    //     ? HomeScreen(switchScreen) // if true
    //     : const QuestionsScreen(); // if false

    Widget screenWidget = HomeScreen(switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple.shade900,
                Colors.purple.shade600,
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
