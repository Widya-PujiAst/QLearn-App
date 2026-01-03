import 'package:flutter/material.dart';
import '../../component/data/quizdata.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;
  int? selectedAnswer;
  List<int?> answers = List.filled(quizData.length, null);

  void _nextQuestion() {
    if (answers[currentIndex] == null) {
      _showAnswerWarning();
      return;
    }

    if (currentIndex < quizData.length - 1) {
      setState(() {
        currentIndex++;
        selectedAnswer = answers[currentIndex];
      });
    }
  }

  void _prevQuestion() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
        selectedAnswer = answers[currentIndex];
      });
    }
  }

  void _showAnswerWarning() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Peringatan'),
        content: const Text('Silakan pilih jawaban terlebih dahulu'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showResultDialog() {
    int score = 0;
    for (int i = 0; i < quizData.length; i++) {
      if (answers[i] == quizData[i].correctIndex) score++;
    }

    String getScoreMessage(int score) {
      if (score <= 4) {
        return 'Ayo baca lagi materinya!';
      } else if (score <= 8) {
        return 'Keren, kamu sudah paham dasar-dasar QRIS.';
      } else {
        return 'Luar biasa! Kamu sudah siap jadi pakar pembayaran digital.';
      }
    }

    final message = getScoreMessage(score);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Selamat anda telah \n menyelesaikan kuis!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              Image.asset(
                'lib/component/images/congrats_kuiz.png',
                height: 140,
              ),

              const SizedBox(height: 16),

              Text(
                message, // teks keterangan skor (ayo belajar lagi, dll)
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Score',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 6),

              Text(
                '$score / ${quizData.length}',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(
                        context,
                        '/quiz-review',
                        arguments: answers,
                      );
                    },
                    child: const Text('Lihat Jawaban'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade400,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushReplacementNamed(context, '/main');
                    },
                    child: const Text('Kembali'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = quizData[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Pertanyaan
            Container(
              width: 500,
              height: 150,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  question.question,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Opsi
            ...List.generate(question.options.length, (index) {
              final isSelected = selectedAnswer == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedAnswer = index;
                    answers[currentIndex] = index;
                  });
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.green.shade100 : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected ? Colors.green : Colors.grey.shade300,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    '${String.fromCharCode(65 + index)}. ${question.options[index]}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.green.shade800 : Colors.black,
                    ),
                  ),
                ),
              );
            }),

            const SizedBox(height: 12),

            if (currentIndex == quizData.length - 1)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (answers[currentIndex] == null) {
                      _showAnswerWarning();
                      return;
                    }
                    _showResultDialog();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text('Submit Kuis'),
                ),
              ),

            const Spacer(),

            // Navigasi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: _prevQuestion,
                  icon: const Icon(Icons.arrow_back),
                ),
                Text('${currentIndex + 1}/${quizData.length}'),
                IconButton(
                  onPressed: _nextQuestion,
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
