import 'package:first_flutter_app/data/questions.dart';
import 'package:first_flutter_app/question_screen.dart';
import 'package:first_flutter_app/reqsult_screen.dart';
import 'package:first_flutter_app/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(startQuiz: switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ReqsultScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 80, 15, 194),
              Color.fromARGB(255, 122, 65, 221),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
