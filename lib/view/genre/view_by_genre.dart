import 'package:app_stream_anime/widget/card_item.dart';
import 'package:app_stream_anime/widget/space.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constant/colors.dart';
import '../../constant/fonts.dart';
import '../../data/model/anime.dart';
import '../../data/model/anime_movie.dart';
import '../../data/model/anime_series.dart';

class ViewByGenre extends StatefulWidget {
  const ViewByGenre({Key? key}) : super(key: key);

  @override
  State<ViewByGenre> createState() => _ViewByGenreState();
}

class _ViewByGenreState extends State<ViewByGenre> {
  String selectedGenre = 'All';

  List<Anime> combinedAnimeList = [
    ...animeSeries,
    ...animeList,
  ];

  @override
  Widget build(BuildContext context) {
    List<String> genres = ['All', 'Action', 'Comedy', 'Shounen', 'Mystery'];
    List<Anime> filteredAnimeList = selectedGenre == 'All'
        ? combinedAnimeList
        : combinedAnimeList
            .where((anime) => anime.genre == selectedGenre)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.infinity,
              size: 40,
              shadows: [
                Shadow(
                  color: Colors.white,
                  offset: Offset(0, 0),
                  blurRadius: 5,
                ),
              ],
              color: AppColors.whiteColors,
            ),
            Text(
              'GodSlayerFlix.',
              style: textSplash.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: genres.map((genre) {
                  bool isSelected = genre == selectedGenre;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGenre = genre;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.orange : Colors.grey,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: Text(
                          genre,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 11.0),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SpaceHeight(20),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2 / 3,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: filteredAnimeList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var anime = filteredAnimeList[index];
                  return CardItem(
                      image: anime.image,
                      title: anime.title,
                      genre: anime.genre,
                      status: anime.status);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
