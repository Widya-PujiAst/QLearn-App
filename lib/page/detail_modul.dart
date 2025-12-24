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
    final ModulVideo? video = data?['video'];
    final List<ModulMateri> materi = data?['materi'] ?? [];

    return Scaffold(
      backgroundColor: const Color(0xFFEFFAEF),
      appBar: AppBar(title: Text(category.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DESKRIPSI
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(category.shortDesc),
            ),

            // VIDEO
            if (video != null)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      'Sumber: ${video.source}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

            // LIST MATERI
            ...materi.map(
              (m) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    m.number.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(m.title),
                subtitle: Text(m.description),
                trailing: const Icon(Icons.keyboard_arrow_down),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
