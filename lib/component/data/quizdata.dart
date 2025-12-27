import '../model/model_quiz.dart';

final quizData = [
  QuizQuestion(
    question: 'Apa kepanjangan dari QRIS?',
    options: [
      'Quick Response Indonesian Standard',
      'Quick Response Code Indonesian Standard',
      'Quality Response Indonesian System',
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question:
        'Siapakah lembaga utama yang mengatur dan menetapkan standar QRIS di Indonesia?',
    options: [
      'Kementerian Komunikasi dan Informatika (Kominfo)',
      'Otoritas Jasa Keuangan (OJK)',
      'Bank Indonesia (BI)',
    ],
    correctIndex: 2,
  ),

  QuizQuestion(
    question:
        'Apa nama jenis QRIS yang berupa stiker tetap di meja kasir dan pembeli harus mengetik nominal sendiri?',
    options: ['QRIS Statis', 'QRIS Dinamis', 'QRIS Tuntas'],
    correctIndex: 0,
  ),

  QuizQuestion(
    question:
        'Jika kamu belanja di luar negeri seperti Singapura atau Thailand, apakah kamu bisa membayar pakai QRIS?',
    options: [
      'Tidak bisa, harus pakai kartu kredit',
      'Bisa, saldo rupiah akan otomatis dikonversi sesuai kurs',
      'Bisa, tapi harus punya rekening bank negara tersebut',
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question: 'Manakah yang merupakan manfaat QRIS bagi penjual (Merchant)?',
    options: [
      'Harus menyediakan banyak barcode dari berbagai aplikasi',
      'Transaksi tercatat otomatis dan tidak pusing cari uang kembalian',
      'Mendapatkan saldo gratis setiap kali ada yang scan',
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question:
        'Apa fitur QRIS yang memungkinkan kamu menarik uang di ATM tanpa perlu membawa kartu fisik?',
    options: ['QRIS CPM', 'QRIS TTM (Tanpa Tatap Muka)', 'QRIS Tuntas'],
    correctIndex: 2,
  ),

  QuizQuestion(
    question:
        'Berapakah batas maksimal nominal transaksi QRIS yang ditetapkan saat ini per satu kali transaksi?',
    options: ['Rp 1.000.000', 'Rp 5.000.000', 'Rp 10.000.000'],
    correctIndex: 2,
  ),

  QuizQuestion(
    question:
        'Apa yang harus dilakukan pembeli untuk memastikan keamanan sebelum menekan tombol "Bayar" setelah scan?',
    options: [
      'Langsung tekan bayar agar cepat',
      'Memastikan nama toko (Merchant) yang muncul di layar HP sudah sesuai',
      'Meminta foto KTP penjual',
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question: 'Bagaimana cara kerja QRIS TTM (Tanpa Tatap Muka)?',
    options: [
      'Pembeli harus datang ke toko tapi tidak boleh bicara',
      'Penjual mengirim gambar QRIS lewat chat, lalu pembeli mengunggahnya dari galeri HP',
      'Pembeli membayar menggunakan suara di telepon',
    ],
    correctIndex: 1,
  ),

  QuizQuestion(
    question: 'Apa yang dimaksud dengan MDR dalam sistem QRIS?',
    options: [
      'Bonus saldo untuk pembeli',
      'Biaya layanan yang dikenakan kepada penjual untuk pemeliharaan sistem',
      'Kecepatan internet saat melakukan scan',
    ],
    correctIndex: 1,
  ),
];
