import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(95, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style:  GoogleFonts.lato(
                color:Colors.white,
                fontSize: 25,
              ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white, width: 2),
              ),
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
              label: const Text('Start Quiz')),
        ],
      ),
    );
  }
}
