import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: cs.onSurface),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Tentang Aplikasi',
          style: TextStyle(fontWeight: FontWeight.bold, color: cs.onSurface),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 🔹 INFO APP
          _card(
            context: context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Q-Learn (QRIS Learning)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: cs.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Aplikasi edukasi penggunaan QRIS di Indonesia',
                  style: TextStyle(color: cs.onSurfaceVariant),
                ),
              ],
            ),
          ),

          // 🔹 DETAIL APP
          _card(
            context: context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tentang Aplikasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: cs.onSurface,
                  ),
                ),
                const SizedBox(height: 12),
                _infoRow(
                  context,
                  'Status Aplikasi',
                  'Versi Awal (pengembangan)',
                ),
                _infoRow(context, 'Tahun Pengembangan', '2025'),
                _infoRow(context, 'Dikembangkan Oleh', 'Widya Puji'),
                _infoRow(
                  context,
                  'Ditujukan untuk',
                  'UMKM dan Masyarakat umum',
                ),
              ],
            ),
          ),

          // 🔹 SUMBER
          _card(
            context: context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sumber Ilustrasi & Gambar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: cs.onSurface,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '• Ilustrasi dibuat menggunakan AI (Artificial Intelligence)\n'
                  '• Beberapa ikon menggunakan aset bebas lisensi (free-to-use)\n'
                  '• Gambar digunakan untuk keperluan edukasi, bukan komersial',
                  style: TextStyle(color: cs.onSurfaceVariant),
                ),
              ],
            ),
          ),

          // 🔹 PENGEMBANGAN
          _card(
            context: context,
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              dense: true,
              visualDensity: VisualDensity.compact,
              title: Text(
                'Pengembangan Selanjutnya',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: cs.onSurface,
                ),
              ),
              children: const [
                SizedBox(height: 8),
                _FutureItem('Penambahan simulasi QRIS interaktif'),
                _FutureItem('Penambahan soal Quiz menjadi lebih banyak'),
                _FutureItem('Penambahan Fitur Login'),
                _FutureItem('Tutorial Aplikasi untuk pengguna baru'),
                _FutureItem('Update materi sesuai regulasi terbaru'),
              ],
            ),
          ),

          // 🔹 CATATAN (HIGHLIGHT)
          _card(
            context: context,
            color: cs.secondaryContainer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Catatan:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: cs.onSecondaryContainer,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Aplikasi ini bersifat edukatif dan tidak digunakan untuk transaksi pembayaran langsung.',
                  style: TextStyle(color: cs.onSecondaryContainer),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 CARD
  static Widget _card({
    required BuildContext context,
    required Widget child,
    Color? color,
  }) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color ?? cs.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }

  // 🔹 INFO ROW
  static Widget _infoRow(BuildContext context, String label, String value) {
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(label, style: TextStyle(color: cs.onSurface)),
          ),
          Expanded(
            child: Text(value, style: TextStyle(color: cs.onSurfaceVariant)),
          ),
        ],
      ),
    );
  }
}

// 🔹 FUTURE ITEM
class _FutureItem extends StatelessWidget {
  final String text;
  const _FutureItem(this.text);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 4),
      child: Row(
        children: [
          Icon(Icons.circle, size: 6, color: cs.onSurfaceVariant),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text, style: TextStyle(color: cs.onSurfaceVariant)),
          ),
        ],
      ),
    );
  }
}
