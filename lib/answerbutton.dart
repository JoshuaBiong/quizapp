import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerstext;
  final void Function()? selectanswers;
  const AnswerButton(
      {super.key, required this.selectanswers, required this.answerstext});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: 200,
        child:
            ElevatedButton(onPressed: selectanswers, child: Text(answerstext)));
  }
}
