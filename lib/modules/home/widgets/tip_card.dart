import 'package:faramove_test/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TipCard extends StatelessWidget {
  const TipCard({
    Key? key,
    required this.title,
    this.onTap,
    this.height = 150,
    this.width = 150,
    required this.background,
  }) : super(key: key);

  final String title;
  final Function()? onTap;
  final double height, width;
  final String background;

  @override
  Widget build(BuildContext context) {
    return Fader(
      child: CustomTapDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Container(
            width: width.h,
            height: height.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5.r),
              ),
              image: DecorationImage(
                image: AssetImage(background),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(title,
                    size: AppTextSize.subHeader, weight: FontWeight.w500)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
