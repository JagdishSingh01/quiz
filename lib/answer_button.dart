import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal:40 ,vertical: 10),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 22, 3, 127),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(answerText,textAlign: TextAlign.center,style:const TextStyle(fontSize: 15),),
      ),
    );
  }
}
