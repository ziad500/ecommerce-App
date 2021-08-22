import 'package:flutter/material.dart';

class CustomCardModel {
  String price, subtitle, image;
  VoidCallback? onCardClick;
  CustomCardModel({
    required this.price,
    required this.subtitle,
    required this.image,
    this.onCardClick,
  });
}
