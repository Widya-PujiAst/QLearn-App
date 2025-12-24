import 'package:qlearn_app/component/model/model_mmateri.dart';
import 'package:qlearn_app/component/model/model_mvideo.dart';

final Map<String, Map<String, dynamic>> modulData = {
  'umkm': {
    'video': ModulVideo(
      thumbnail: 'lib/component/images/qris_umkm.png',
      title: 'Penjelasan penggunaan QRIS bagi UMKM',
      source: 'Youtube',
      youtubeUrl: 'https://youtube.com/',
    ),
    'materi': [
      ModulMateri(
        number: 1,
        title: 'Apa itu QRIS?',
        description: 'Pengertian dan fungsi QRIS',
      ),
      ModulMateri(
        number: 2,
        title: 'QRIS Dinamis vs Static',
        description: 'Perbedaan QRIS dinamis dan statis',
      ),
    ],
  },

  'pembeli': {
    'video': null,
    'materi': [
      ModulMateri(
        number: 1,
        title: 'Cara Scan QRIS',
        description: 'Langkah-langkah pembayaran QRIS',
      ),
    ],
  },
};
