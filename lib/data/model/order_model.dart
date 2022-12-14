import 'package:flutter/painting.dart';

class OrderModel {
  final Color color;
  final String title;
  final String subTitle;
  final int price;
  final int quantity;
  OrderModel({
    required this.color,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.quantity,
  });
}
