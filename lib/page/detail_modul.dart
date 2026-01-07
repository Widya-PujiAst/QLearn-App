import 'package:flutter/material.dart';
import 'package:qlearn_app/component/data/moduldata.dart';
import 'package:qlearn_app/component/model/model_mkategori.dart';
import 'package:qlearn_app/component/model/model_mmateri.dart';
import 'package:qlearn_app/component/model/model_mvideo.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailModulPage extends StatelessWidget {
  const DetailModulPage({super.key});

  // 🔥 buka YouTube / browser (bukan di aplikasi)
  Future<void> _openYoutube(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  // 🔥 ambil ID video YouTube
  String getYoutubeId(String url) {
    final uri = Uri.parse(url);

    // youtu.be/VIDEOID
    if (uri.host.contains('youtu.be')) {
      return uri.pathSegments.first;
    }

    // youtube.com/watch?v=VIDEOID
    return uri.queryParameters['v'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)!.settings.arguments as ModulCategory;

    final data = modulData[category.id];

    final ModulVideo? video = data?['video'] as ModulVideo?;
    final List<ModulMateri> materi =
        (data?['materi'] as List<ModulMateri>?) ?? [];

    // 🔥 videoId HARUS di sini (bukan di children)
    final String? videoId = video != null
        ? getYoutubeId(video.youtubeUrl)
        : null;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onSurface,
          ),
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
                  style: TextStyle(
                    fontSize: 22,
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  category.shortDesc,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // ===== CONTAINER PUTIH =====
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLowest,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // ===== VIDEO YOUTUBE =====
                      if (video != null && videoId != null) ...[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: InkWell(
                          onTap: () => _openYoutube(video.youtubeUrl),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.network(
                                'https://img.youtube.com/vi/$videoId/hqdefault.jpg',
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(
                                  height: 200,
                                  color: Colors.black12,
                                  child: const Center(
                                    child: Icon(Icons.broken_image, size: 40),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black45,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sumber: ',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () => _openYoutube(video.youtubeUrl),
                            child: const Text(
                              'YouTube',
                              style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),
                    ],

                    // ===== LIST MATERI =====
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
                          style: TextStyle(fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(m.description,style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
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
