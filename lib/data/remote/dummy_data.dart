import 'package:saodi_task/data/model/address_model.dart';
import 'package:saodi_task/data/model/category_model.dart';
import 'package:saodi_task/data/model/deals_model.dart';
import 'package:saodi_task/data/model/offer_model.dart';
import 'package:saodi_task/data/model/order_model.dart';

import '../../presentation/style/colors.dart';

List<dynamic> addressData = [
  AddressModel(
    title: "Home Address",
    subTitle: "Mustafa St. No:2 Street x12",
  ),
  AddressModel(
    title: "Office Address",
    subTitle: "Axis Istanbul, B2 Blok Floor 2, Office 11",
  ),
];
List<dynamic> categoryData = [
  CategoryModel(
    color: AppColor.kBlue,
    title: "Steak",
  ),
  CategoryModel(
    color: AppColor.kAmber,
    title: "Vegetables",
  ),
  CategoryModel(
    color: AppColor.kBlueGrey,
    title: "Beverages",
  ),
  CategoryModel(
    color: AppColor.kBrown,
    title: "Fish",
  ),
  CategoryModel(
    color: AppColor.kCover,
    title: "Juice",
  ),
  CategoryModel(
    color: AppColor.kDeepOrange,
    title: "Beverages",
  ),
];
List<dynamic> dealsData = [
  DealsModel(
    id: 0,
    color: AppColor.kAmber,
    isLike: false,
    title: "Summer Sun Ice Cream Pack",
    pieces: "5",
    distance: "12",
    discount_price: "18",
  ),
  DealsModel(
    id: 1,
    color: AppColor.kBlue,
    isLike: true,
    title: "Summer Sun Ice Cream Pack",
    pieces: "15",
    distance: "20",
    discount_price: "20",
  ),
  DealsModel(
    id: 2,
    color: AppColor.kBrown,
    isLike: false,
    title: "Summer Sun Ice Cream Pack",
    pieces: "5",
    distance: "78",
    discount_price: "40",
  ),
];
final offerData = OfferModel(
  title: "Mega",
  prand: "WHOPPER",
  price: 17,
  discount_price: "18",
  time: "Available until 24 December 2020",
);
List<dynamic> orderData = [
  OrderModel(
    color: AppColor.kAmber,
    title: "Turkish Steak",
    subTitle: "173 Grams",
    price: 25,
    quantity: 2,
  ),
  OrderModel(
    color: AppColor.kBlack,
    title: "Salmon",
    subTitle: "173 Grams",
    price: 43,
    quantity: 3,
  ),
  OrderModel(
    color: AppColor.kBlue,
    title: "Red Juice",
    subTitle: "173 Grams",
    price: 23,
    quantity: 5,
  ),
  OrderModel(
    color: AppColor.kBlueGrey,
    title: "Cola",
    subTitle: "173 Grams",
    price: 21,
    quantity: 4,
  ),
];
