// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_stream_anime/gen/assets.gen.dart';

import 'episode_model.dart';

class AnimeSeries {
  final int id;
  final String title;
  final String genre;
  final String image;
  final String description;
  final String status;
  // ambil dari class Episode
  final List<Episode> episode;

  AnimeSeries({
    required this.id,
    required this.title,
    required this.genre,
    required this.image,
    required this.description,
    required this.status,
    required this.episode,
  });
}

// buatkan list berdasarkan parameter yang ada di class AnimeSeries sebanyak 2 data
List<AnimeSeries> animeSeries = [
  AnimeSeries(
    id: 1,
    title: 'Naruto',
    genre: 'Action, Adventure, Comedy, Super Power, Martial Arts, Shounen',
    image: const $AssetsImagesGen().avenger.path,
    description:
        'Naruto adalah sebuah serial manga karya Masashi Kishimoto yang diadaptasi menjadi serial anime. Manga Naruto bercerita seputar kehidupan tokoh utamanya, Naruto Uzumaki, seorang ninja remaja yang berisik, hiperaktif, dan ambisius, dan petualangannya dalam mewujudkan keinginan untuk mendapatkan gelar Hokage, pemimpin dan ninja terkuat di desanya.',
    status: 'Ongoing',
    episode: [
      Episode(
        id: 1,
        nomorEpisode: 1,
        title: 'Naruto Uzumaki',
        video: 'https://www.youtube.com/watch?v=5-PdM1D4Pqo&t=184s',
      ),
      Episode(
        id: 2,
        nomorEpisode: 2,
        title: 'Sasuke Uchiha',
        video: 'assets/videos/naruto_2.mp4',
      ),
      Episode(
        id: 3,
        nomorEpisode: 3,
        title: 'Sakura Haruno',
        video: 'assets/videos/naruto_3.mp4',
      ),
    ],
  ),
  AnimeSeries(
    id: 2,
    title: 'One Piece',
    genre: 'Action, Adventure, Comedy, Super Power, Drama, Fantasy, Shounen',
    image: const $AssetsImagesGen().farFromHome.path,
    description:
        'One Piece adalah sebuah serial manga karya Eiichiro Oda yang diadaptasi menjadi serial anime. Manga One Piece bercerita seputar petualangan Monkey D. Luffy, seorang anak laki-laki yang memiliki tubuh karet setelah memakan buah Gomu Gomu, dan kru bajak lautnya dalam mencari harta karun legendaris bernama One Piece.',
    status: 'Ongoing',
    episode: [
      Episode(
        id: 1,
        nomorEpisode: 1,
        title: 'Luffy',
        //gunakan link youtube
        video: 'https://www.youtube.com/watch?v=5-PdM1D4Pqo&t=184s',
      ),
      Episode(
        id: 2,
        nomorEpisode: 2,
        title: 'Zoro',
        video: 'assets/videos/one_piece_2.mp4',
      ),
      Episode(
        id: 3,
        nomorEpisode: 3,
        title: 'Nami',
        video: 'assets/videos/one_piece_3.mp4',
      ),
    ]
  ),
];

