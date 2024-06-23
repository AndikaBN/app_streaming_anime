// ignore_for_file: public_member_api_docs, sort_constructors_first, use_super_parameters
import 'package:app_stream_anime/data/model/anime.dart';
import 'package:app_stream_anime/gen/assets.gen.dart';

import 'episode_model.dart';

class AnimeSeries extends Anime {
  final List<Episode> episode;

  AnimeSeries({
    required int id,
    required String title,
    required String genre,
    required String image,
    required String description,
    required String status,
    required this.episode,
  }) : super(
          id: id,
          title: title,
          genre: genre,
          image: image,
          description: description,
          status: status,
        );
}

// buatkan list berdasarkan parameter yang ada di class AnimeSeries sebanyak 2 data
List<AnimeSeries> animeSeries = [
  AnimeSeries(
    id: 1,
    title: 'Naruto',
    genre: 'Shounen',
    image: const $AssetsImagesGen().avenger.path,
    description:
        'Naruto adalah sebuah serial manga karya Masashi Kishimoto yang diadaptasi menjadi serial anime. Manga Naruto bercerita seputar kehidupan tokoh utamanya, Naruto Uzumaki, seorang ninja remaja yang berisik, hiperaktif, dan ambisius, dan petualangannya dalam mewujudkan keinginan untuk mendapatkan gelar Hokage, pemimpin dan ninja terkuat di desanya.',
    status: 'OnGoing',
    episode: [
      Episode(
        id: 1,
        nomorEpisode: 1,
        title: 'Naruto Uzumaki',
        video: 'https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4',
      ),
      Episode(
        id: 2,
        nomorEpisode: 2,
        title: 'Sasuke Uchiha',
        video:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
      Episode(
        id: 3,
        nomorEpisode: 3,
        title: 'Sakura Haruno',
        video: 'https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4',
      ),
    ],
  ),
  AnimeSeries(
      id: 2,
      title: 'One Piece',
      genre: 'Comedy',
      image: const $AssetsImagesGen().farFromHome.path,
      description:
          'One Piece adalah sebuah serial manga karya Eiichiro Oda yang diadaptasi menjadi serial anime. Manga One Piece bercerita seputar petualangan Monkey D. Luffy, seorang anak laki-laki yang memiliki tubuh karet setelah memakan buah Gomu Gomu, dan kru bajak lautnya dalam mencari harta karun legendaris bernama One Piece.',
      status: 'OnGoing',
      episode: [
        Episode(
          id: 1,
          nomorEpisode: 1,
          title: 'Luffy',
          //gunakan link youtube
          video: 'https://www.youtube.com/watch?v=qxxSrdgF5FE',
        ),
        Episode(
          id: 2,
          nomorEpisode: 2,
          title: 'Zoro',
          video: 'https://www.youtube.com/watch?v=oQyau_52M9Q',
        ),
        Episode(
          id: 3,
          nomorEpisode: 3,
          title: 'Nami',
          video: 'https://www.youtube.com/watch?v=QTng1dRHu9E',
        ),
      ]),
];
