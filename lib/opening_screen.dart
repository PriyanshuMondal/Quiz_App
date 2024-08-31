import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningScreen extends StatelessWidget{
  const OpeningScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
          ),

          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //   'assets/images/quiz-logo.png',
          //   width: 300,
          //   ),
          // ),
          
          const SizedBox(height: 80),
          Text('Learn flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 24,
            color: const Color.fromARGB(255, 251, 222, 255),
          ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom
            (
              foregroundColor: const Color.fromARGB(255, 251, 222, 255),
           ),
           icon: const Icon(Icons.arrow_right_alt),
           label: const Text('Start Quiz'),
           ),
        ],
      ),
    );
  }
}