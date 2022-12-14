import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import 'package:saodi_task/data/model/order_model.dart';
import 'package:saodi_task/presentation/style/colors.dart';

import '../widgets/default_text.dart';

class CardOrder extends StatefulWidget {
  final OrderModel orderModel;
  CardOrder({
    Key? key,
    required this.orderModel,
  }) : super(key: key);

  @override
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  late int q = widget.orderModel.quantity;
  late int sum = widget.orderModel.price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.5.h),
      height: 10.h,
      child: Row(
        children: [
          Container(
            height: 9.h,
            width: 9.h,
            decoration: BoxDecoration(
              color: widget.orderModel.color,
              borderRadius: BorderRadius.circular(2.h),
            ),
          ),
          SizedBox(width: 6.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                text: widget.orderModel.title,
                textSize: 12.sp,
                textColor: AppColor.kBlack,
                fontWeight: FontWeight.bold,
              ),
              DefaultText(
                text: widget.orderModel.subTitle,
                textSize: 9.sp,
                fontWeight: FontWeight.bold,
                textColor: AppColor.kGrey,
              ),
              DefaultText(
                text: "\$ ${sum * q}",
                textSize: 16.sp,
                textColor: AppColor.kRed,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    q--;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(0.3.h),
                  decoration: BoxDecoration(
                    color: AppColor.kBlue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: AppColor.kBlue,
                  ),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              DefaultText(
                text: q.toString(),
                textSize: 16.sp,
                fontWeight: FontWeight.bold,
                textColor: AppColor.kBlack,
              ),
              SizedBox(
                width: 3.w,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    q++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(0.3.h),
                  decoration: BoxDecoration(
                    color: AppColor.kBlue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColor.kBlue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
