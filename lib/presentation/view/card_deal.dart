import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import 'package:saodi_task/data/model/deals_model.dart';
import 'package:saodi_task/presentation/style/colors.dart';
import 'package:saodi_task/presentation/widgets/default_text.dart';

import '../../business_logic/global_getx.dart';

class CardDeal extends StatelessWidget {
  GlobalGetx crt = Get.put(GlobalGetx());

  CardDeal({
    Key? key,
    required this.dealsModel,
  }) : super(key: key);
  final DealsModel dealsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.h),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                height: 13.h,
                width: 13.h,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: dealsModel.color,
                  borderRadius: BorderRadius.circular(2.h),
                ),
              ),
              InkWell(
                onTap: () {
                  crt.isFavourites(dealsModel.id);
                },
                child: CircleAvatar(
                  radius: 1.3.h,
                  backgroundColor: AppColor.kWhite,
                  child: dealsModel.isLike == false
                      ? Icon(
                          Icons.favorite_border_rounded,
                          color: AppColor.kGrey,
                          size: 1.7.h,
                        )
                      : Icon(
                          Icons.favorite,
                          color: AppColor.kRed,
                          size: 1.7.h,
                        ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 3.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DefaultText(
                text: dealsModel.title.toString(),
                textSize: 10.sp,
                fontWeight: FontWeight.bold,
                textColor: AppColor.kBlack,
              ),
              DefaultText(
                text: "Pleces ${dealsModel.pieces.toString()}",
                textSize: 10.sp,
                textColor: AppColor.kBlack,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 2.h,
                    color: AppColor.kGrey,
                  ),
                  DefaultText(
                    text: "15 Minutes Away",
                    textSize: 10.sp,
                    textColor: AppColor.kBlack,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DefaultText(
                    text: "\$ ${dealsModel.pieces}",
                    textSize: 13.sp,
                    textColor: AppColor.kRed,
                    fontWeight: FontWeight.w900,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  DefaultText(
                    text: "\$ ${dealsModel.discount_price}",
                    textSize: 13.sp,
                    decoration: TextDecoration.lineThrough,
                    textColor: AppColor.kGrey,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
