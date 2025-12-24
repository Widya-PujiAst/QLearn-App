import 'dart:ui';

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Tentang Aplikasi',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Q-Learn (QRIS Learning)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'Aplikasi edukasi penggunaan QRIS di Indonesia',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          _card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Tentang Aplikasi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                _infoRow('Status Aplikasi', 'Versi Awal (pengembangan)'),
                _infoRow('Tahun Pengembangan', '2025'),
                _infoRow('Dikembangkan Oleh', 'Widya Puji'),
                _infoRow('Ditujukan untuk', 'UMKM dan Masyarakat umum'),
              ],
            ),
          ),

          _card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sumber Ilustrasi & Gambar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  '• Ilustrasi dibuat menggunakan AI (Artificial Intelligence)\n'
                  '• Beberapa ikon menggunakan aset bebas lisensi (free-to-use)\n'
                  '• Gambar digunakan untuk keperluan edukasi, bukan komersial',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          _card(
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 8,
              ),
              dense: true, // ✅ bikin lebih rapet
              visualDensity: VisualDensity.compact,
              title: const Text(
                'Pengembangan Selanjutnya',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: const [
                SizedBox(height: 8),
                _futureItem('Penambahan simulasi QRIS interaktif'),
                _futureItem('Kuis dengan sistem penilaian'),
                _futureItem('Video tutorial penggunaan QRIS'),
                _futureItem('Mode gelap (Dark Mode)'),
                _futureItem('Update materi sesuai regulasi terbaru'),
              ],
            ),
          ),

          _card(
            color: const Color(0xFFDCFCE7), // hijau soft
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Catatan:', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(
                  'Aplikasi ini bersifat edukatif dan tidak digunakan untuk transaksi pembayaran langsung.',
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _card({required Widget child, Color? color}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}

class _infoRow extends StatelessWidget {
  final String label;
  final String value;

  const _infoRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(label)),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}

class _futureItem extends StatelessWidget {
  final String text;

  const _futureItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 4),
      child: Row(
        children: [
          const Icon(Icons.circle, size: 6, color: Colors.black54),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text, style: const TextStyle(color: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
