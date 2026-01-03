import 'package:flutter/material.dart';

class Tutorialqris extends StatelessWidget {
  const Tutorialqris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        title: const Text('Tips Keamanan QRIS'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _TutorialStep(
            number: 1,
            text:
                'Sekilas QRIS asli dan palsu terlihat hampir sama. '
                'Pastikan untuk memastikan kejelasan QR tersebut langsung ke penjual.',
            imagePath: 'lib/component/images/tutor_1.png',
          ),
          _TutorialStep(
            number: 2,
            text:
                'Maraknya penempelan stiker QRIS palsu di lapak tanpa '
                'disadari penjual. Pastikan tidak ada stiker mencurigakan '
                'yang menimpa QRIS asli.',
            imagePath: 'lib/component/images/tutor_2.png',
          ),
          _TutorialStep(
            number: 3,
            text:
                'Jika setelah discan QRIS tidak terdaftar, segera tanyakan '
                'kepada penjual. Bisa jadi QR tersebut merupakan penipuan.',
            imagePath: 'lib/component/images/tutor_3.png',
          ),
          _TutorialStep(
            number: 4,
            text:
                'Jika nama merchant di aplikasi tidak sesuai dengan nama lapak, '
                'segera konfirmasi ke penjual. Jika ragu, batalkan transaksi '
                'dan gunakan metode pembayaran lain.',
            imagePath: 'lib/component/images/tutor_4.png',
          ),
        ],
      ),
    );
  }
}

/// ================= WIDGET STEP =================
class _TutorialStep extends StatelessWidget {
  final int number;
  final String text;
  final String imagePath;

  const _TutorialStep({
    required this.number,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.green,
                  child: Text(
                    number.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Text(
                  'Tips agar aman!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(text, style: const TextStyle(fontSize: 14, height: 1.5)),
            const SizedBox(height: 12),

            /// 🔹 GAMBAR (aman kalau belum ada, tinggal ganti path)
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                height: 350,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => Container(
                  height: 160,
                  color: Colors.white,
                  child: const Center(child: Icon(Icons.image_not_supported)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
