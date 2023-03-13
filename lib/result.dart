import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final void Function()? resetQuiz;
  final int outof;
  const Result(
      {super.key,
      required this.result,
      required this.resetQuiz,
      required this.outof});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (result.toString()),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              const Text("/",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
              Text(outof.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w500))
            ],
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
