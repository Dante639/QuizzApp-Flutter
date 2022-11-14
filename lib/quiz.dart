import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questindex;
  final qAnswer;

  Quiz(
      {required this.questions,
      required this.qAnswer,
      required this.questindex});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questindex]['QuestionText'] as String,
        ),
        ...(questions[questindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => qAnswer(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
