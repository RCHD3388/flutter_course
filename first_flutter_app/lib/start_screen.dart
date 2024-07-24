import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: const Color.fromARGB(121, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            "Learn flutter the fun way !",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
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
              side: const BorderSide(color: Colors.white, width: 2),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start The Quiz"),
          )
        ],
      ),
    );
  }
}
