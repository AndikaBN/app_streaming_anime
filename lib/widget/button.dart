// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum ButtonStyle { filled, outlined }

class Button extends StatelessWidget {
  const Button.filled({
    super.key,
    required this.onPresed,
    required this.label,
    required this.style,
    required this.color,
    required this.textColor,
    required this.width,
    required this.height,
    this.icon,
    required this.disable,
    required this.fontSize,
  });

  const Button.outlined({
    super.key,
    required this.onPresed,
    required this.label,
    required this.style,
    required this.color,
    required this.textColor,
    required this.width,
    required this.height,
    this.icon,
    required this.disable,
    required this.fontSize,
  });

  final Function() onPresed;
  final String label;
  final ButtonStyle style;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  final Widget? icon;
  final bool disable;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
