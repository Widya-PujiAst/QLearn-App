import 'package:flutter/material.dart';
import 'package:qlearn_app/component/data/simulasidata.dart';
import 'package:qlearn_app/component/kategorimodul_card.dart';
import 'package:qlearn_app/component/kuis_card.dart';
import 'package:qlearn_app/component/model/model_mkategori.dart';
import 'package:qlearn_app/component/simulasi_card.dart';
import 'package:qlearn_app/component/tutorqris_card.dart';
import 'package:qlearn_app/page/about.dart';
import 'package:qlearn_app/page/faq.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        leadingWidth: 0,
        leading: null,
        titleSpacing: 12,
        title: Row(
          children: [
            Image.asset('lib/component/images/logo.png', height: 32),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Q-Learn',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'QRIS Learning App',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.settings),
            onSelected: (value) {
              switch (value) {
                case 'faq':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const FaqPage()),
                  );
                  break;
                case 'about':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutPage()),
                  );
                  break;
                case 'share':
                  _showShareSheet(context);
                  break;
              }
            },
            itemBuilder: (context) => [
              // 🔥 MODE TAMPILAN
              PopupMenuItem<String>(
                enabled: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Mode Tampilan'),
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        value: isDarkMode,
                        onChanged: (value) {
                          setState(() => isDarkMode = value);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const PopupMenuDivider(),

              const PopupMenuItem(
                value: 'faq',
                child: Text('Pertanyaan Umum (FAQ)'),
              ),
              const PopupMenuItem(
                value: 'about',
                child: Text('Tentang Aplikasi'),
              ),
              const PopupMenuItem(value: 'share', child: Text('Bagikan')),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: KategorimodulCard(
                      category: ModulCategory(
                        id: 'umkm',
                        title: 'UMKM',
                        shortDesc: 'Panduan untuk pelaku usaha',
                      ),
                      icon: Icons.store,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: KategorimodulCard(
                      category: ModulCategory(
                        id: 'pembeli',
                        title: 'Pembeli',
                        shortDesc: 'Panduan pembeli menggunakan QRIS',
                      ),
                      icon: Icons.person,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                'Panduan Keamanan QRIS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              TutorqrisCard(
                imagePath: 'lib/component/images/tutorial_qris.png',
                title: 'Waspada penipuan QRIS!',
                subtitle: 'Cara Aman Bertransaksi dengan QRIS',
                buttonText: 'Tips',
                onTap: () {},
              ),
              const SizedBox(height: 16),

              _buildSectionHeader(context),
              const SizedBox(height: 2),

              _buildSimulasiHorizontal(),
              const SizedBox(height: 16),

              const QuisCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSimulasiHorizontal() {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: simulasiList.length,
        separatorBuilder: (_, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return SizedBox(
            width: 160, // ✅ DI SINI, BUKAN DI CARD
            child: SimulasiCard(data: simulasiList[index]),
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Simulasi QRIS',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/simulasi');
            },
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  void _showShareSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Bagikan Aplikasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Salin Link'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Bagikan ke Media Sosial'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
