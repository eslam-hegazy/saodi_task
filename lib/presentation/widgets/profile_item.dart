import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding:
              EdgeInsets.only(left: 2.w, right: 8.w, top: 0.8.h, bottom: 0.8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.h),
              bottomLeft: Radius.circular(30.h),
              bottomRight: Radius.circular(10.h),
              topRight: Radius.circular(50.h),
            ),
            color: Colors.red.withOpacity(0.9),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 1.w,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        CircleAvatar(
          radius: 2.h,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 1.9.h,
          ),
        ),
      ],
    );
  }
}
