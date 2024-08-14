// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_stream_anime/data/model/anime.dart';

import '../../gen/assets.gen.dart';

class AnimeMovie extends Anime {
  final String video;

  // ignore: use_super_parameters
  AnimeMovie({
    required int id,
    required String title,
    required String genre,
    required String image,
    required String description,
    required String status,
    
    required this.video,
  }) : super(
          id: id,
          title: title,
          genre: genre,
          image: image,
          description: description,
          status: status,
        );
}

//buat list berdasarkan parameter yang ada di class AnimeMovie dengan banyak data ada 7
final List<AnimeMovie> animeList = [
  AnimeMovie(
    id: 1,
    title: 'Pecel',
    genre: 'Action',
    image: const $AssetsImagesGen().farFromHome.path,
    description:
        'Naruto Uzumaki, a hyperactive and knuckle-headed ninja, lives in Konohagakure, the Hidden Leaf village. Moments prior to his birth, a huge demon known as the Kyuubi, the Nine-tailed Fox, attacked Konohagakure and wreaked havoc. In order to put an end to the Kyuubi\'s rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto. Shunned because of the presence of the Kyuubi inside him, Naruto struggles to find his place in the village. He strives to become the Hokage of Konohagakure, and he meets many friends and foes along the way.',
    status: 'OnGoing',
    video:
        'http://192.168.18.66:8000/storage/videos/EOFml9OScfGbwtEQ8XLpCQxOGD9aIjPTte0X5Sw1.mp4',
  ),
  AnimeMovie(
    id: 2,
    title: 'Sate Belayak',
    genre: 'Shounen',
    image: const $AssetsImagesGen().avenger.path,
    description:
        'Gol D. Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates Now, Monkey D. Luffy, a',
    status: 'End',
    video: 'https://www.youtube.com/watch?v=9Q7QpO2FvZ0',
  ),
  //one punch man
  AnimeMovie(
    id: 3,
    title: 'Ares Sedak Susu',
    genre: 'Comedy',
    image: const $AssetsImagesGen().noWayHome.path,
    description:
        'The seemingly ordinary and unimpressive Saitama has a rather unique hobby: being a hero. In order to pursue his childhood dream, he trained relentlessly for three years—and lost all of his hair in the process. Now, Saitama is incredibly powerful, so much so that no enemy is able to defeat him in battle. In fact, all it takes to defeat evildoers with just one punch has led to an unexpected problem—he is no longer able to enjoy the thrill of battling and has become quite bored.',
    status: 'End',
    video: 'https://www.youtube.com/watch?v=9Q7QpO2FvZ0',
  ),
  //attack on titan
  AnimeMovie(
    id: 4,
    title: 'Jus Jeruk',
    genre: 'Mystery',
    image: const $AssetsImagesGen().sangchi.path,
    description:
        'Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against',
    status: 'End',
    video: 'https://www.youtube.com/watch?v=9Q7QpO2FvZ0',
  ),
];
