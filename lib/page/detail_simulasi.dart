import 'package:flutter/material.dart';
import 'package:qlearn_app/component/model/model_skategori.dart';

class DetailSimulasi extends StatelessWidget {
  const DetailSimulasi({super.key});

  @override
  Widget build(BuildContext context) {
    final SimulasiCategory data =
        ModalRoute.of(context)!.settings.arguments as SimulasiCategory;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      /// ===== APP BAR =====
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          data.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),

      /// ===== CONTENT =====
      body: 
      ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        itemCount: data.steps.length,
        itemBuilder: (context, index) {
          final step = data.steps[index];
          return _StepItem(step: step);
        },
      ),
    );
  }
}

class _StepItem extends StatelessWidget {
  final SimulasiStep step;

  const _StepItem({required this.step});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// ===== GAMBAR =====
        Image.asset(step.image, height: 200, fit: BoxFit.contain),

        const SizedBox(height: 16),

        /// ===== TEKS =====
        Text(
          step.text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, height: 1.4, color: Theme.of(context).colorScheme.onSurface,
          ),
        ),

        const SizedBox(height: 16),

        /// ===== NOMOR STEP =====
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.green,
          child: Text(
            step.step.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),

        const SizedBox(height: 50),
      ],
    );
  }
}
