import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, Object>> questions = [
    {
      'questionText': "What is the Largest planet?",
      'answers': [
        {'text': 'Mars', 'score': 0},
        {'text': 'Jupiter', 'score': 1},
        {'text': 'Earth', 'score': 0},
        {'text': 'Neptune', 'score': 0},
      ]
    },
    {
      'questionText': "What is the Hottest planet?",
      'answers': [
        {'text': 'Mercury', 'score': 0},
        {'text': 'Earth', 'score': 0},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 1},
      ]
    },
    {
      'questionText': "What is the Smallest planet?",
      'answers': [
        {'text': 'Mars', 'score': 0},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Mercury', 'score': 1},
        {'text': 'Uranus', 'score': 0},
      ]
    },
  ];

  int questionIndex = 0;
  int totalResult = 0;

  void answerQuestions(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
      totalResult += score;
      // if (questionIndex < questions.length) {
      //   print('we have more quesitons');
      // }
      // if (questions[questionIndex]['answers'] == questions[questionIndex][1]) {
      //   print("Answer is Correct");
      // } else {
      //   print("answer is wrongg");
      // }
    });
    // print(totalResult);
  }

  void reset() {
    setState(() {
      questionIndex = 0;
      totalResult = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: questionIndex < questions.length
          ? Quiz(
              questions: questions,
              answerQuestions: answerQuestions,
              questionIndex: questionIndex,
            )
          : Result(
              result: totalResult,
              resetQuiz: reset,
              outof: questions.length,
            ),
    );
  }
}
