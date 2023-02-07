import 'package:animate_do/animate_do.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickAction extends StatelessWidget {
  const QuickAction({
    Key? key,
    this.onTap,
    this.height = 105,
    this.backgroundColor = AppColors.yellow,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.background,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String icon;
  final Function()? onTap;
  final double height;
  final String background;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: Container(
        width: 335.w,
        height: height.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10.r),
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                CustomMultilineText(
                  title,
                  size: AppTextSize.title,
                  weight: FontWeight.w700,
                  color: AppColors.white,
                ),
                const YSpace(5),
                CustomMultilineText(
                  subtitle,
                  size: AppTextSize.smallText,
                  weight: FontWeight.w500,
                  color: AppColors.grey1,
                )
              ],
            ),
            Image.asset(icon)
          ],
        ),
      ),
    );
  }
}
