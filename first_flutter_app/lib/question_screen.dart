import 'package:first_flutter_app/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "question",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "ans1",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "ans2",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "ans3",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
