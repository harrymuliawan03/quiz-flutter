import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
import 'package:flutter_application_1/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: null,
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                    // Define the color and width of the outline
                    return const BorderSide(color: Colors.white, width: 2.0);
                  },
                ),
              ),
              child: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
