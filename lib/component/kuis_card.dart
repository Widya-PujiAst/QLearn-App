import 'package:flutter/material.dart';
import 'package:qlearn_app/page/dialogkuiz.dart';

class QuisCard extends StatelessWidget {
  const QuisCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        child: Stack(
          children: [
            // ===== BACKGROUND IMAGE =====
            Positioned.fill(
              child: Image.asset(
                'lib/component/images/kuis.png',
                fit: BoxFit.cover,
              ),
            ),

            // // ===== GRADIENT BIAR TEKS KEBACA =====
            // Positioned.fill(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment.centerLeft,
            //         end: Alignment.centerRight,
            //         colors: [
            //           Colors.white.withValues(alpha: 0.95),
            //           Colors.white.withValues(alpha: 0.5),
            //           Colors.transparent,
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            // ===== TEKS + BUTTON (KIRI) =====
            Positioned(
              left: 16,
              top: 16,
              bottom: 16,
              child: SizedBox(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WAKTUNYA KUIZ!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      'Siap membuktikan pemahamanmu?\nIkuti kuiz dan lihat hasilnya!',
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),

                    const SizedBox(height: 12),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => QuizStartPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Mulai Kuiz'),
                          SizedBox(width: 6),
                          Icon(Icons.arrow_forward, size: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
