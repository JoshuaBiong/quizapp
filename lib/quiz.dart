import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'answerbutton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestions;
  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(question: questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButton(
              selectanswers: (() => answerQuestions(answer['score'] as int)),
              answerstext: answer['text'] as String);
        }).toList()
      ],
    );
  }
}
