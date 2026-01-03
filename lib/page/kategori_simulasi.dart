import 'package:flutter/material.dart';
import 'package:qlearn_app/component/data/simulasidata.dart';
import 'package:qlearn_app/component/simulasi_card.dart';

class KategoriSimulasi extends StatelessWidget {
  const KategoriSimulasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Kategori Simulasi',
          style: TextStyle(
            fontWeight: FontWeight.bold, // ⬅️ BOLD
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: simulasiList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return SimulasiCard(data: simulasiList[index]);
          },
        ),
      ),
    );
  }
}
