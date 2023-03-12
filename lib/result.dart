import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final void Function()? resetQuiz;
  const Result({super.key, required this.result, required this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Your score is",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text(
            result.toString(),
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('RESET'),
          ),
        ],
      ),
    );
  }
}
