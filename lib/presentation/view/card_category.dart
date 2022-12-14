import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:saodi_task/data/model/category_model.dart';
import 'package:saodi_task/presentation/widgets/default_text.dart';

import '../style/colors.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 8.h,
          width: 8.h,
          margin: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
            color: categoryModel.color,
            borderRadius: BorderRadius.circular(2.h),
          ),
        ),
        DefaultText(
            text: categoryModel.title,
            textSize: 9.sp,
            fontWeight: FontWeight.bold,
            textColor: AppColor.kBlack)
      ],
    );
  }
}
