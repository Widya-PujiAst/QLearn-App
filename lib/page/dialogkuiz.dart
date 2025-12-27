import 'package:flutter/material.dart';

class QuizStartPage extends StatefulWidget {
  const QuizStartPage({super.key});

  @override
  State<QuizStartPage> createState() => _QuizStartPageState();
}

class _QuizStartPageState extends State<QuizStartPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showStartDialog();
    });
  }

  void _showStartDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, // ❌ tidak bisa tap luar
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text(
          'Apakah Anda siap mengikuti kuis?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: const Text(
          'Jika setuju mengikuti kuis, maka kuis tidak akan bisa ditutup '
          'sebelum selesai dikerjakan.',
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          /// ❌ NANTI AJA
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade400,
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/main');
            },
            child: const Text('Nanti Aja'),
          ),

          /// ✅ IKUTI KUIS
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/quiz');
            },
            child: const Text('Ikuti Kuis'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // halaman kosong, cuma background
    return Scaffold(backgroundColor: Theme.of(context).scaffoldBackgroundColor);
  }
}
