import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import 'package:saodi_task/data/model/address_model.dart';
import 'package:saodi_task/presentation/style/colors.dart';
import 'package:saodi_task/presentation/widgets/default_text.dart';

class CardAddress extends StatelessWidget {
  final AddressModel addressModel;
  const CardAddress({
    Key? key,
    required this.addressModel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Container(
        width: 48.w,
        height: 10.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(2.h),
          boxShadow: [
            BoxShadow(
              color: AppColor.kGrey.withOpacity(0.5),
              offset: const Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 1.h, vertical: 0.2.h),
          leading: Container(
            height: 5.h,
            width: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.4.h),
              color: AppColor.kGrey,
            ),
          ),
          title: DefaultText(
            text: addressModel.title.toString(),
            textSize: 11.sp,
            textColor: AppColor.kBlack,
            fontWeight: FontWeight.w700,
          ),
          subtitle: DefaultText(
            text: addressModel.subTitle.toString(),
            textSize: 10.sp,
            maxLine: 2,
            textColor: AppColor.kGrey,
          ),
        ),
      ),
    );
  }
}
