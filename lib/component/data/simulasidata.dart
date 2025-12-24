import 'package:qlearn_app/component/model/model_skategori.dart';

final simulasiList = [
  SimulasiCategory(
    id: 'beli_qris',
    title: 'Simulasi Pembeli',
    description: 'Simulasi pembeli saat melakukan pembayaran dengan QRIS',
    cardImage: 'lib/component/images/simulasi_pembeli.png',
    steps: [
      SimulasiStep(
        step: 1,
        text: 'Pilih produk atau layanan yang ingin dibeli di toko',
        image: 'lib/component/images/beliqris_1.png',
      ),
      SimulasiStep(
        step: 2,
        text: 'Penjual menampilkan QRIS',
        image: 'lib/component/images/beliqris_2.png',
      ),
    ],
  ),

  SimulasiCategory(
    id: 'terima_qris',
    title: 'Simulasi Penjual',
    description: 'Simulasi penjual saat menerima pembayaran dengan QRIS',
    cardImage: 'lib/component/images/simulasi_penjual.png',
    steps: [
      SimulasiStep(
        step: 1,
        text: 'Buka aplikasi pembayaran',
        image: 'lib/component/images/refund_1.png',
      ),
    ],
  ),

  SimulasiCategory(
    id: 'refund_qris',
    title: 'Simulasi Refund',
    description: 'Simulasi pengembalian uang pembeli (jika tersedia)',
    cardImage: 'lib/component/images/simulasi_refund.png',
    steps: [],
  ),
];
