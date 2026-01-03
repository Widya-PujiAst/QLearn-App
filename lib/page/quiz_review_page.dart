import 'package:flutter/material.dart';
import '../../component/data/quizdata.dart';

class QuizReviewPage extends StatelessWidget {
  const QuizReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final answers = ModalRoute.of(context)!.settings.arguments as List<int?>;

    return Scaffold(
      appBar: AppBar(title: const Text('Review Jawaban')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: quizData.length,
        itemBuilder: (context, index) {
          final q = quizData[index];
          return Card(
            child: ListTile(
              title: Text(q.question),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jawaban kamu: ${answers[index] != null ? q.options[answers[index]!] : '-'}',
                  ),
                  Text(
                    'Jawaban benar: ${q.options[q.correctIndex]}',
                    style: const TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
