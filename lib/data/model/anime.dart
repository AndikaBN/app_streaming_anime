// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_stream_anime/gen/assets.gen.dart';

class Anime {
  final int id;
  final String title;
  final String genre;
  final String image;
  final String description;
  Anime({
    required this.id,
    required this.title,
    required this.genre,
    required this.image,
    required this.description,
  });
}

List anime = Anime(
  id: 1,
  title: 'Monster Musume',
  genre: 'Echi',
  image: $AssetsImagesGen().avenger.path,
  description: "suka sama loli",
) as List;
