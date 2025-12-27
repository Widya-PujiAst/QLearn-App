import 'package:qlearn_app/component/model/model_mmateri.dart';
import 'package:qlearn_app/component/model/model_mvideo.dart';

final Map<String, Map<String, dynamic>> modulData = {
  'umkm': {
    'video': ModulVideo(
      thumbnail: 'lib/component/images/qris_umkm.png',
      title:
          'Penjelasan tentang penggunaan QRIS bagi \n UMKM dengan lengkap hanya 3 menit saja!',
      source: 'Youtube',
      youtubeUrl: 'Youtube',
    ),
    'materi': [
      ModulMateri(
        number: 1,
        title: 'Apa itu QRIS?',
        description:
            'QRIS (Quick Response Code Indonesian Standard) adalah standar QR Code resmi dari Bank Indonesia. '
            'Dengan QRIS, penjual cukup memiliki satu kode QR yang bisa digunakan oleh semua aplikasi pembayaran.',
      ),
      ModulMateri(
        number: 2,
        title: 'Mengapa Penjual Butuh QRIS?',
        description:
            'QRIS membuat toko terlihat modern dan rapi. Penjual tidak perlu menampilkan banyak stiker barcode '
            'karena satu QRIS sudah bisa melayani semua aplikasi pembayaran.',
      ),
      ModulMateri(
        number: 3,
        title: 'Jenis QRIS: Statis & Dinamis',
        description:
            'QRIS Statis cocok untuk UMKM karena pembeli memasukkan nominal sendiri. '
            'QRIS Dinamis cocok untuk toko besar karena nominal otomatis muncul di mesin kasir.',
      ),
      ModulMateri(
        number: 4,
        title: 'Cara Membuat QRIS Usaha',
        description:
            'Penjual dapat mendaftar melalui bank atau Penyelenggara Jasa Pembayaran (PJP) resmi. '
            'Siapkan KTP, foto usaha, dan rekening bank.',
      ),
      ModulMateri(
        number: 5,
        title: 'Biaya MDR (Merchant Discount Rate)',
        description:
            'MDR adalah biaya layanan kecil untuk setiap transaksi QRIS. '
            'Untuk usaha mikro, tarifnya sangat rendah dan sebanding dengan kemudahan yang didapat.',
      ),
      ModulMateri(
        number: 6,
        title: 'Settlement (Uang Cair)',
        description:
            'Dana hasil transaksi QRIS tidak selalu masuk instan. '
            'Biasanya cair H+1 tergantung bank atau PJP.',
      ),
      ModulMateri(
        number: 7,
        title: 'Pencatatan Otomatis & Pembukuan',
        description:
            'Semua transaksi QRIS tercatat otomatis di aplikasi merchant. '
            'Ini memudahkan pemantauan penjualan harian hingga bulanan.',
      ),
      ModulMateri(
        number: 8,
        title: 'Membangun Rapor Usaha di Bank',
        description:
            'Riwayat transaksi QRIS dapat menjadi nilai tambah saat mengajukan pinjaman modal usaha ke bank.',
      ),
      ModulMateri(
        number: 9,
        title: 'Verifikasi Transaksi (Anti Penipuan)',
        description:
            'Penjual wajib mengecek notifikasi transaksi di aplikasi merchant, '
            'bukan hanya percaya pada layar ponsel pembeli.',
      ),
      ModulMateri(
        number: 10,
        title: 'QRIS Refund (Pengembalian Dana)',
        description:
            'Jika terjadi kesalahan nominal, penjual dapat melakukan refund melalui aplikasi merchant '
            'secara resmi dan aman.',
      ),
      ModulMateri(
        number: 11,
        title: 'Keamanan Dana di PJP',
        description:
            'Transaksi QRIS diproses oleh PJP resmi yang diawasi Bank Indonesia, '
            'sehingga dana penjual terjamin aman.',
      ),
      ModulMateri(
        number: 12,
        title: 'Masa Depan Ekonomi Cashless',
        description:
            'QRIS mendukung ekosistem pembayaran non-tunai yang lebih efisien, '
            'transparan, dan mendorong pertumbuhan ekonomi digital Indonesia.',
      ),
    ],
  },

  'pembeli': {
    'video': ModulVideo(
      thumbnail: 'lib/component/images/qris_pembeli.png',
      title:
          'Penjelasan tentang penggunaan QRIS Bagi Pembeli \n untuk sehari-hari, lengkap hanya 3 menit saja!',
      source: 'Youtube',
      youtubeUrl: 'Youtube',
    ),
    'materi': [
      ModulMateri(
        number: 1,
        title: 'Apa itu QRIS?',
        description:
            'QRIS adalah standar QR Code resmi dari Bank Indonesia. '
            'Satu QRIS bisa digunakan oleh semua aplikasi pembayaran, '
            'sehingga transaksi jadi lebih praktis.',
      ),
      ModulMateri(
        number: 2,
        title: 'Keuntungan bagi Konsumen',
        description:
            'QRIS praktis, higienis, fleksibel, dan tidak perlu uang kembalian. '
            'Pembayaran bisa dilakukan hingga satuan rupiah terkecil.',
      ),
      ModulMateri(
        number: 3,
        title: 'Cara Scan QRIS yang Benar',
        description:
            'Buka aplikasi pembayaran, pilih menu scan, arahkan kamera ke QRIS, '
            'masukkan nominal jika diminta, lalu konfirmasi dengan PIN.',
      ),
      ModulMateri(
        number: 4,
        title: 'QRIS Antarnegara',
        description:
            'QRIS dapat digunakan di beberapa negara seperti Singapura, Thailand, dan Malaysia '
            'menggunakan aplikasi bank Indonesia.',
      ),
      ModulMateri(
        number: 5,
        title: 'QRIS TTM (Tanpa Tatap Muka)',
        description:
            'Pembayaran dapat dilakukan dengan memindai foto QRIS yang dikirim penjual '
            'melalui fitur upload galeri.',
      ),
      ModulMateri(
        number: 6,
        title: 'CPM (Customer Presented Mode)',
        description:
            'Pada mode CPM, pembeli menunjukkan QR Code dari ponsel ke kasir '
            'untuk dipindai.',
      ),
      ModulMateri(
        number: 7,
        title: 'QRIS untuk Donasi & Zakat',
        description:
            'QRIS memudahkan donasi dan zakat secara aman, '
            'langsung ke rekening resmi lembaga.',
      ),
      ModulMateri(
        number: 8,
        title: 'Limit Transaksi QRIS',
        description:
            'Bank Indonesia menetapkan batas maksimal transaksi QRIS sebesar Rp10 juta per transaksi.',
      ),
      ModulMateri(
        number: 9,
        title: 'QRIS Tuntas',
        description:
            'QRIS Tuntas memungkinkan tarik tunai, transfer, dan setor uang '
            'cukup dengan scan QR.',
      ),
      ModulMateri(
        number: 10,
        title: 'Waspada QRIS Palsu',
        description:
            'Selalu cek nama merchant setelah scan QRIS. '
            'Jika nama tidak sesuai, batalkan transaksi.',
      ),
      ModulMateri(
        number: 11,
        title: 'Promo & Cashback',
        description:
            'Banyak aplikasi memberikan promo, poin, atau cashback '
            'saat menggunakan QRIS.',
      ),
    ],
  },
};
