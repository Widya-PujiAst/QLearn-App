import 'package:flutter/material.dart';
import 'package:qlearn_app/component/data/modulist.dart';
import 'package:qlearn_app/component/data/simulasidata.dart';
import 'package:qlearn_app/component/kategorimodul_card.dart';
import 'package:qlearn_app/component/kuis_card.dart';
import 'package:qlearn_app/component/simulasi_preview_card.dart';

class KategoriModul extends StatelessWidget {
  const KategoriModul({super.key});

  @override
  Widget build(BuildContext context) {
    final simulasiPembeli = simulasiList.firstWhere((e) => e.id == 'beli_qris');

    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        title: const Text(
          'Kategori Modul',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ===== KATEGORI =====
            const Text(
              'Kategori',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: KategorimodulCard(
                    category: modulList.firstWhere((e) => e.id == 'umkm'),
                    icon: Icons.store,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: KategorimodulCard(
                    category: modulList.firstWhere((e) => e.id == 'pembeli'),
                    icon: Icons.person,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            const Text(
              'Simulasi QRIS',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            SimulasiPreviewCard(
              data: simulasiPembeli,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail_simulasi',
                  arguments: simulasiPembeli,
                );
              },
            ),

            const SizedBox(height: 24),

            /// ===== KUIS =====
            const Text(
              'Cobalah Kuiz tentang QRIS',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            const QuisCard(),
          ],
        ),
      ),
    );
  }
}
