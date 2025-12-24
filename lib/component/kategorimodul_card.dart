import 'package:flutter/material.dart';
import 'package:qlearn_app/component/model/model_mkategori.dart';

class KategorimodulCard extends StatelessWidget {
  final ModulCategory category;
  final IconData icon;
  final Color color;

  const KategorimodulCard({
    super.key,
    required this.category,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        Navigator.pushNamed(
          context,
          '/detail_modul',
          arguments: category, // 🔥 PAKAI DATA YANG DIKLIK
        );
      },
      child: Container(
        height: 140,
        padding: const EdgeInsets.all(16), // JARAK DARI TEPI
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.20),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // RATA KIRI
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 12),
            Text(
              category.title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              category.shortDesc,
              style: const TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
