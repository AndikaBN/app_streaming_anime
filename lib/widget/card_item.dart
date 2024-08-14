// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../constant/fonts.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.title,
    required this.genre,
    required this.status,
    required this.width,
    required this.height,
  });

  final String image;
  final String title;
  final String genre;
  final String status;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: Colors.blue[400],
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(6.0),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: status == 'OnGoing' ? Colors.orange : Colors.red,
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
            ),
            child: Text(
              status,
              style: whiteTextStyle.copyWith(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: whiteTextStyle.copyWith(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    genre,
                    overflow: TextOverflow.ellipsis,
                    style: whiteTextStyle.copyWith(
                      fontSize: 9.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.network(""),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
