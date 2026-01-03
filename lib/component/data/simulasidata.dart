import 'package:qlearn_app/component/model/model_skategori.dart';

final simulasiList = [
  /// ================= SIMULASI PEMBELI =================
  SimulasiCategory(
    id: 'beli_qris',
    title: 'Simulasi Pembeli',
    description: 'Simulasi pembeli saat melakukan pembayaran dengan QRIS',
    cardImage: 'lib/component/images/simulasi_pembeli.png',
    steps: [
      SimulasiStep(
        step: 1,
        text: 'Pilih produk atau layanan \n yang ingin dibeli di toko',
        image: 'lib/component/images/beliqris_1.png',
      ),
      SimulasiStep(
        step: 2,
        text: 'Penjual menampilkan QRIS',
        image: 'lib/component/images/beliqris_2.png',
      ),
      SimulasiStep(
        step: 3,
        text: 'Pembeli membuka aplikasi pembayaran',
        image: 'lib/component/images/beliqris_3.png',
      ),
      SimulasiStep(
        step: 4,
        text: 'Scan QRIS yang ditampilkan penjual',
        image: 'lib/component/images/beliqris_4.png',
      ),
      SimulasiStep(
        step: 5,
        text: 'Masukkan nominal pembayaran \n jika belum terisi otomatis',
        image: 'lib/component/images/beliqris_5.png',
      ),
      SimulasiStep(
        step: 6,
        text:
            'Konfirmasi pembayaran dan tunjukkan \n bukti transaksi berhasil kepada penjual',
        image: 'lib/component/images/beliqris_6.png',
      ),
    ],
  ),

  /// ================= SIMULASI PENJUAL =================
  SimulasiCategory(
    id: 'terima_qris',
    title: 'Simulasi Penjual',
    description: 'Simulasi penjual saat menerima pembayaran dengan QRIS',
    cardImage: 'lib/component/images/simulasi_penjual.png',
    steps: [
      SimulasiStep(
        step: 1,
        text: 'Penjual membuka menu “Tampilkan QRIS” \n di aplikasi pembayaran',
        image: 'lib/component/images/refund_1.png',
      ),
      SimulasiStep(
        step: 2,
        text: 'Pelanggan melakukan scan QRIS',
        image: 'lib/component/images/refund_2.png',
      ),
      SimulasiStep(
        step: 3,
        text: 'Sistem menampilkan nominal \n atau pelanggan mengisi manual',
        image: 'lib/component/images/refund_3.png',
      ),
      SimulasiStep(
        step: 4,
        text: 'Pelanggan melakukan pembayaran',
        image: 'lib/component/images/refund_4.png',
      ),
      SimulasiStep(
        step: 5,
        text: 'Penjual menerima notifikasi \n pembayaran masuk',
        image: 'lib/component/images/refund_5.png',
      ),
      SimulasiStep(
        step: 6,
        text: 'Saldo rekening penjual \n otomatis ter-update',
        image: 'lib/component/images/refund_6.png',
      ),
    ],
  ),

  /// ================= SIMULASI REFUND =================
  SimulasiCategory(
    id: 'refund_qris',
    title: 'Simulasi Refund',
    description: 'Simulasi pengembalian uang QRIS pembeli (jika tersedia)',
    cardImage: 'lib/component/images/simulasi_refund.png',
    steps: [
      SimulasiStep(
        step: 1,
        text: 'Pembeli mengajukan refund ke merchant \n dengan alasan tertentu',
        image: 'lib/component/images/refn_1.png',
      ),
      SimulasiStep(
        step: 2,
        text: 'Penjual memverifikasi transaksi \n yang direfund',
        image: 'lib/component/images/refn_4.png',
      ),
      SimulasiStep(
        step: 3,
        text: 'Sistem memproses pengembalian dana',
        image: 'lib/component/images/refn_5.png',
      ),
      SimulasiStep(
        step: 4,
        text: 'Pembeli menerima notifikasi \n bahwa refund berhasil',
        image: 'lib/component/images/refn_6.png',
      ),
    ],
  ),
];
