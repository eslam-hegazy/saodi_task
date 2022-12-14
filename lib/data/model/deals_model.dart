import 'package:flutter/material.dart';

class DealsModel {
  final int id;
  final Color color;
  final bool isLike;
  final String title;
  final String pieces;
  final String distance;
  final String discount_price;
  DealsModel({
    required this.id,
    required this.color,
    required this.isLike,
    required this.title,
    required this.pieces,
    required this.distance,
    required this.discount_price,
  });
}
