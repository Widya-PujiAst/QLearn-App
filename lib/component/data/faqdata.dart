class FaqItem {
  final String question;
  final String answer;

  const FaqItem({required this.question, required this.answer});
}

final List<FaqItem> faqDummyData = [
  FaqItem(
    question: 'Apakah semua aplikasi pembayaran bisa digunakan untuk QRIS?',
    answer:
        'Ya. Selama aplikasi pembayaran terdaftar dan mendukung QRIS, '
        'pembeli dapat menggunakannya untuk membayar di merchant mana pun '
        'yang menyediakan QRIS.',
  ),
  FaqItem(
    question: 'Bagaimana cara UMKM mendaftar QRIS?',
    answer:
        'UMKM dapat mendaftar melalui bank atau penyedia jasa pembayaran resmi (PJSP) '
        'dengan melengkapi data usaha dan identitas pemilik.',
  ),
  FaqItem(
    question: 'Bagaimana cara memastikan QRIS yang digunakan asli?',
    answer:
        'Pastikan nama merchant muncul dengan benar di aplikasi pembayaran. '
        'Hindari melakukan pembayaran jika kode QR terlihat mencurigakan '
        'atau mengarah ke rekening pribadi.',
  ),
  FaqItem(
    question: 'Apakah QRIS aman digunakan?',
    answer:
        'QRIS tergolong aman karena transaksi diproses melalui sistem pembayaran resmi '
        'dan diawasi oleh Bank Indonesia. Setiap transaksi juga menampilkan '
        'identitas merchant sebelum pembayaran dikonfirmasi.',
  ),
  FaqItem(
    question: 'Apa yang harus dilakukan jika salah memasukkan nominal?',
    answer:
        'Jika transaksi belum dikonfirmasi, nominal masih bisa diubah. '
        'Jika pembayaran sudah berhasil, pembeli dapat menghubungi merchant '
        'atau melapor melalui aplikasi pembayaran.',
  ),
  FaqItem(
    question: 'Bagaimana jika transaksi QRIS gagal tetapi saldo terpotong?',
    answer:
        'Pembeli dapat mengecek status transaksi di aplikasi. '
        'Jika saldo terpotong tanpa pembayaran berhasil, '
        'segera laporkan ke layanan pelanggan aplikasi yang digunakan.',
  ),
  FaqItem(
    question: 'Apakah QRIS bisa digunakan tanpa koneksi internet?',
    answer:
        'Tidak. Transaksi QRIS memerlukan koneksi internet agar '
        'sistem dapat memproses pembayaran secara real-time.',
  ),
  FaqItem(
    question: 'Apa yang harus dilakukan jika QRIS disalahgunakan?',
    answer:
        'Jika terjadi penyalahgunaan atau indikasi penipuan, '
        'segera hentikan transaksi dan laporkan ke bank, '
        'penyedia aplikasi pembayaran, atau pihak berwenang.',
  ),
];
