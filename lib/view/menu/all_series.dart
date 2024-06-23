// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../data/model/anime_series.dart';
import '../../widget/card_item.dart';
import '../../widget/space.dart';
import '../home/detail_series_home.dart';

class AllSeries extends StatefulWidget {
  const AllSeries({Key? key}) : super(key: key);

  @override
  State<AllSeries> createState() => _AllSeriesState();
}

class _AllSeriesState extends State<AllSeries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SpaceHeight(10),
          GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2 / 3,
              crossAxisCount: 3,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
            ),
            itemCount: animeSeries.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = animeSeries[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailSeries(
                        animeSeries: item,
                      ),
                    ),
                  );
                },
                child: CardItem(
                  image: item.image,
                  title: item.title,
                  genre: item.genre,
                  status: item.status,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
