import 'package:flutter/material.dart';
import 'package:qlearn_app/component/model/model_skategori.dart';

class DetailSimulasi extends StatelessWidget {
  const DetailSimulasi({super.key});

  @override
  Widget build(BuildContext context) {
    final SimulasiCategory data =
        ModalRoute.of(context)!.settings.arguments as SimulasiCategory;

    return Scaffold(
      appBar: AppBar(title: Text(data.title), centerTitle: true),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // ===== DESKRIPSI =====
          Text(
            data.description,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),

          const SizedBox(height: 20),

          // ===== LIST STEP =====
          ...data.steps.map((step) => _StepItem(step: step)),
        ],
      ),
    );
  }
}

class _StepItem extends StatelessWidget {
  final SimulasiStep step;

  const _StepItem({required this.step});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ===== GAMBAR =====
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(step.image, height: 200, fit: BoxFit.contain),
          ),

          const SizedBox(height: 12),

          // ===== NOMOR STEP =====
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.green,
            child: Text(
              step.step.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 8),

          // ===== DESKRIPSI =====
          Text(
            step.text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
