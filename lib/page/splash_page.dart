import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool showFinal = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onLottieLoaded(LottieComposition composition) {
    _controller
      ..duration = composition.duration
      ..forward();

    // ⏱️ Setelah animasi selesai → tampil final
    Timer(composition.duration, () {
      if (!mounted) return;
      setState(() => showFinal = true);

      // ⏱️ Final splash sebentar → home
      Timer(const Duration(seconds: 2), () {
        if (!mounted) return;
        Navigator.pushReplacementNamed(context, '/main');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
    data: ThemeData.light(), // 🔥 paksa terang
    child: Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        child: showFinal ? _buildFinal() : _buildLottie(),
      ),
      )
    );
  }

  /// ====== LOTTIE (1x PLAY) ======
  Widget _buildLottie() {
    return Container(
      key: const ValueKey('lottie'),
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Lottie.asset(
        'lib/component/lottie/splash_anim.json',
        controller: _controller,
        width: 220,
        onLoaded: _onLottieLoaded,
        repeat: false,
      ),
    );
  }

  /// ====== FINAL SPLASH ======
  Widget _buildFinal() {
    return Container(
      key: const ValueKey('final'),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFB7F3C1), Colors.white],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/component/images/logo.png', height: 150),
          const SizedBox(height: 7),
          const Text(
            'Q-Learn',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Membuka Era Baru Pembayaran\nDigital di Indonesia',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black87, height: 1.4),
          ),
        ],
      ),
    );
  }
}
