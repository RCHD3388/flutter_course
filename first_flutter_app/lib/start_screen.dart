import 'package:first_flutter_app/quiz.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen({super.key, required this.startQuiz});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(121, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            "Learn flutter the fun way !",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              side: BorderSide(color: Colors.white, width: 2),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start The Quiz"),
          )
        ],
      ),
    );
  }
}
