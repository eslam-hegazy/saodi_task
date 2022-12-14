import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saodi_task/data/remote/dummy_data.dart';
import 'package:saodi_task/presentation/style/colors.dart';
import 'package:saodi_task/presentation/view/card_address.dart';
import 'package:saodi_task/presentation/view/card_category.dart';
import 'package:saodi_task/presentation/view/card_deal.dart';
import 'package:saodi_task/presentation/view/card_offer.dart';
import 'package:saodi_task/presentation/widgets/default_text.dart';
import 'package:saodi_task/presentation/widgets/default_text_form_field.dart';
import 'package:saodi_task/presentation/widgets/profile_item.dart';
import 'package:sizer/sizer.dart';

import '../../business_logic/global_getx.dart';

class GroceryScreen extends StatelessWidget {
  GroceryScreen({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ////////////////////profile top item screen
              const ProfileItem(text: "Eslam ST."),
              DefaultTextFormField(
                controller: searchController,
                hintText: "Search in thousands of products",
                type: TextInputType.text,
              ),
              /////////////////////////////////////////////////Card Address
              SizedBox(
                height: 10.h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.all(1.h),
                  scrollDirection: Axis.horizontal,
                  itemCount: addressData.length,
                  itemBuilder: (context, index) {
                    return CardAddress(
                      addressModel: addressData[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 2.h),
              //////////////////////////////////////////////text item category
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultText(
                    text: "Explore by Category",
                    textSize: 12.sp,
                    textColor: AppColor.kBlack,
                    fontWeight: FontWeight.bold,
                  ),
                  DefaultText(
                    text: "See All (36)",
                    textSize: 11.sp,
                    textColor: AppColor.kGrey,
                  ),
                ],
              ),
              //////////////////////////////////////////////////////category item
              Container(
                margin: EdgeInsets.symmetric(vertical: 1.5.h),
                height: 12.h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) {
                    return CardCategory(
                      categoryModel: categoryData[index],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              DefaultText(
                text: "Deals of the day",
                textSize: 12.sp,
                textColor: AppColor.kBlack,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 1.h,
              ),
              ///////////////////////////////// ////////////card deals item
              SizedBox(
                height: 16.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: dealsData.length,
                  itemBuilder: (context, index) {
                    return CardDeal(
                      dealsModel: dealsData[index],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              /////////////////////////////////////////////offer card
              const CardOffer(),
            ],
          ),
        ),
      ),
    );
  }
}
