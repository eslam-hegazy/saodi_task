import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saodi_task/data/remote/dummy_data.dart';
import 'package:saodi_task/presentation/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

import '../style/colors.dart';

class CardOffer extends StatelessWidget {
  const CardOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.h),
        color: AppColor.kRed.withOpacity(0.4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 16.h,
            width: 10.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultText(
                text: offerData.title,
                textSize: 13.sp,
                textColor: AppColor.kRed,
                fontWeight: FontWeight.bold,
              ),
              RichText(
                text: TextSpan(
                  text: "WHOPP",
                  style: TextStyle(
                    color: AppColor.kCover,
                    fontWeight: FontWeight.bold,
                    fontSize: 27.sp,
                  ),
                  children: const [
                    TextSpan(
                        text: "E",
                        style: TextStyle(
                          color: AppColor.kRed,
                        )),
                    TextSpan(text: "R"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DefaultText(
                    text: "\$ ${offerData.price}",
                    textSize: 18.sp,
                    textColor: AppColor.kRed,
                    fontWeight: FontWeight.w900,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  DefaultText(
                    text: "\$ ${offerData.discount_price}",
                    textSize: 18.sp,
                    decoration: TextDecoration.lineThrough,
                    textColor: AppColor.kWhite,
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              DefaultText(
                text: "* Available until 24 December 2020",
                textSize: 9.sp,
                fontWeight: FontWeight.bold,
                textColor: AppColor.kWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
