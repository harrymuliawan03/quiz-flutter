import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map<Widget>(
            (data) {
              final bool isAnswerCorrect =
                  data['correct_answer'] == data['user_answer'];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isAnswerCorrect ? Colors.green : Colors.red[900],
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        if (data['correct_answer'] != data['user_answer'])
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(color: Colors.green),
                          ),
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                              color: isAnswerCorrect
                                  ? Colors.green
                                  : Colors.red[300]),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
