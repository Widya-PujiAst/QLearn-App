import 'package:flutter/material.dart';
import 'package:qlearn_app/component/data/moduldata.dart';
import 'package:qlearn_app/component/model/model_mkategori.dart';
import 'package:qlearn_app/component/model/model_mmateri.dart';
import 'package:qlearn_app/component/model/model_mvideo.dart';

class DetailModulPage extends StatelessWidget {
  const DetailModulPage({super.key});

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)!.settings.arguments as ModulCategory;

    final data = modulData[category.id];

    final ModulVideo? video = data?['video'] as ModulVideo?;
    final List<ModulMateri> materi =
        (data?['materi'] as List<ModulMateri>?) ?? [];

    return Scaffold(
      backgroundColor: const Color(0xFFEFFAEF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ===== JUDUL + DESKRIPSI =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  category.shortDesc,
                  style: const TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // ===== CONTAINER PUTIH =====
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // VIDEO
                    if (video != null) ...[
                      const SizedBox(height: 15),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(video.thumbnail),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        video.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sumber: ${video.youtubeUrl}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 16),
                    ],

                    // LIST MATERI (EXPANSION TILE)
                    ...materi.map(
                      (m) => ExpansionTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(
                            m.number.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(
                          m.title,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(m.description),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
