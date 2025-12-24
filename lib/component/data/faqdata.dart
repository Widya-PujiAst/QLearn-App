class FaqItem {
  final String question;
  final String answer;

  const FaqItem({required this.question, required this.answer});
}

final List<FaqItem> faqDummyData = [
  FaqItem(
    question: 'Apa yang harus dilakukan jika QRIS disalahgunakan?',
    answer:
        'Segera laporkan ke penyedia layanan pembayaran atau bank terkait. '
        'Simpan bukti transaksi dan hubungi call center resmi.',
  ),
  FaqItem(
    question: 'Bagaimana cara UMKM mendaftar QRIS?',
    answer:
        'UMKM dapat mendaftar QRIS melalui bank atau penyedia jasa pembayaran '
        'yang telah bekerja sama dengan Bank Indonesia.',
  ),
  FaqItem(
    question: 'Bagaimana jika transaksi QRIS gagal tetapi saldo terpotong?',
    answer:
        'Saldo biasanya akan dikembalikan secara otomatis. '
        'Jika tidak, segera hubungi layanan pelanggan aplikasi pembayaran.',
  ),
  FaqItem(
    question: 'Apa yang harus dilakukan jika salah memasukkan nominal?',
    answer:
        'Hubungi penjual untuk melakukan pengembalian dana (refund) '
        'sesuai kebijakan masing-masing penyedia.',
  ),
  FaqItem(
    question: 'Apakah QRIS aman digunakan?',
    answer:
        'QRIS aman digunakan karena berada di bawah pengawasan '
        'Bank Indonesia dan menggunakan sistem pembayaran terstandar.',
  ),
  FaqItem(
    question: 'Bagaimana cara memastikan QRIS yang digunakan asli?',
    answer:
        'Pastikan QRIS memiliki logo resmi Bank Indonesia dan '
        'gunakan aplikasi pembayaran yang terpercaya.',
  ),
  FaqItem(
    question: 'Apakah semua aplikasi pembayaran bisa digunakan untuk QRIS?',
    answer:
        'Ya, selama aplikasi tersebut sudah mendukung QRIS '
        'dan terdaftar resmi.',
  ),
  FaqItem(
    question: 'Apakah QRIS bisa digunakan tanpa koneksi internet?',
    answer:
        'Tidak. QRIS membutuhkan koneksi internet untuk memproses transaksi.',
  ),
];
