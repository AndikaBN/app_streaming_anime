// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../constant/fonts.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    Key? key,
    required this.data,
    required this.fontWeight,
    required this.fontSize,
  }) : super(key: key);

  final String data;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: whiteTextStyle.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
