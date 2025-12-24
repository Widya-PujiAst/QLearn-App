import 'package:flutter/material.dart';
import 'package:qlearn_app/page/HomePage.dart';
import 'package:qlearn_app/page/about.dart';
import 'package:qlearn_app/page/detail_modul.dart';
import 'package:qlearn_app/page/detail_simulasi.dart';
import 'package:qlearn_app/page/faq.dart';
import 'package:qlearn_app/page/kategori_modul.dart';
import 'package:qlearn_app/page/kategori_simulasi.dart';
import 'package:qlearn_app/page/kuis.dart';
import 'package:qlearn_app/page/tutorialqris.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/modul': (context) => const KategoriModul(),
        '/kuis': (context) => const Kuis(),
        '/simulasi': (context) => const KategoriSimulasi(),
        '/tutor': (context) => const Tutorialqris(),
        '/faq': (context) => const FaqPage(),
        '/about': (context) => const AboutPage(),
        '/detail_modul': (context) => const DetailModulPage(),
        '/detail_simulasi': (context) => const DetailSimulasi(),
      },
      home: const Navbottom(),
    );
  }
}

class Navbottom extends StatefulWidget {
  const Navbottom({super.key});

  @override
  State<Navbottom> createState() => _NavbottomState();
}

class _NavbottomState extends State<Navbottom> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    KategoriModul(),
    Kuis(),
    KategoriSimulasi(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        selectedFontSize: 11,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color.fromARGB(255, 0, 201, 100),
        unselectedItemColor: Colors.black54,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Modul'),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            label: 'Kuis',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Simulasi'),
        ],
      ),
    );
  }
}
