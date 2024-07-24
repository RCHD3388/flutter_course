import 'package:first_flutter_app/data/questions.dart';
import 'package:first_flutter_app/question_summary.dart';
import 'package:flutter/material.dart';

class ReqsultScreen extends StatelessWidget {
  const ReqsultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((item) {
      return item['user_answer'] == item['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text("You answer $numCorrectQuestions out of $numTotalQuestions correctly"),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
