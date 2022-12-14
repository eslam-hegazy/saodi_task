import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saodi_task/data/remote/dummy_data.dart';
import 'package:saodi_task/presentation/style/colors.dart';
import 'package:saodi_task/presentation/view/card_order.dart';
import 'package:saodi_task/presentation/widgets/default_text.dart';
import 'package:saodi_task/presentation/widgets/profile_item.dart';
import 'package:sizer/sizer.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileItem(text: "Oxford Street"),
            SizedBox(height: 3.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: DefaultText(
                text: "Card",
                textSize: 15.sp,
                textColor: AppColor.kBlack,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                itemCount: orderData.length,
                itemBuilder: (context, index) {
                  return CardOrder(orderModel: orderData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
