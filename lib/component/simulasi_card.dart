import 'package:flutter/material.dart';
import 'package:qlearn_app/component/model/model_skategori.dart';

class SimulasiCard extends StatelessWidget {
  final SimulasiCategory data;

  const SimulasiCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias, // ⬅️ PENTING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ===== GAMBAR (MEPET KIRI KANAN ATAS) =====
          SizedBox(
            height: 100, // 🔼 lebih gede dari sebelumnya
            width: double.infinity,
            child: Image.asset(
              data.cardImage,
              fit: BoxFit.cover, // ⬅️ BIKIN PENUH
              alignment: Alignment.topCenter,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  data.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/detail_simulasi',
                        arguments: data,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      'Mulai',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
