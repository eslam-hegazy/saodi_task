import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:saodi_task/data/model/address_model.dart';
import 'package:saodi_task/data/model/deals_model.dart';
import 'package:saodi_task/data/model/order_model.dart';
import 'package:saodi_task/presentation/screens/card_screen.dart';
import 'package:saodi_task/presentation/screens/grocery_screen.dart';

import '../data/remote/dummy_data.dart';

class GlobalGetx extends GetxController {
  final screens = [
    GroceryScreen(),
    CardScreen(),
  ];
  var currentIndex = 0.obs;
  void changeBottom(var index) {
    currentIndex.value = index;
  }

  /////////////////// add && remove card
  var productsMap = {}.obs;
  var favouriteList = <DealsModel>[].obs;
  void addProductToCart(OrderModel orderModel) {
    if (productsMap.containsKey(orderModel)) {
      productsMap[orderModel] += 1;
    } else {
      productsMap[orderModel] = 1;
    }
  }

  void removeProductsFarmCart(OrderModel orderModel) {
    if (productsMap.containsKey(orderModel) && productsMap[orderModel] == 1) {
      productsMap.removeWhere((key, value) => key == orderModel);
    } else {
      productsMap[orderModel] -= 1;
    }
  }

  /////////////////// favorite List
  bool isFavourites(int productId) {
    return favouriteList.any((element) => element.id == productId);
  }
}
