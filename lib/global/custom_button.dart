import 'package:animate_do/animate_do.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/generic/alternate_display.dart';
import 'package:faramove_test/global/box_sizing.dart';
import 'package:faramove_test/global/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.width = 78,
      this.backgroundColor = AppColors.blue,
      this.labelColor = AppColors.white,
      required this.label,
      this.onTap,
      this.height = 32,
      this.fontSize = 12,
      this.padding,
      this.animate = true,
      this.labelWeight = FontWeight.w500,
      this.isEnabled = true,
      this.isLoading = false,
      this.onLongPress,
      this.onDoubleTap})
      : super(key: key);

  final double width;
  final double height;
  final double fontSize;
  final bool animate;
  final Color backgroundColor, labelColor;
  final bool isEnabled, isLoading;
  final FontWeight labelWeight;

  final String label;
  final Function()? onTap, onLongPress, onDoubleTap;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        width: width.w,
        height: height.h,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: isEnabled
              ? isLoading
                  ? backgroundColor.withOpacity(0.6)
                  : backgroundColor
              : AppColors.grey1,
          shape: BoxShape.rectangle,
        ),
        child: InkWell(
          onTap: isLoading
              ? null
              : isEnabled
                  ? onTap
                  : null,
          onLongPress: onLongPress,
          onDoubleTap: onDoubleTap,
          borderRadius: BorderRadius.circular(5.r),
          splashColor: AppColors.lightBlue,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AlternateDisplay(
                  control: isLoading,
                  initialChild: const SizedBox(),
                  finalChild: Row(
                    children: [
                      SizedBox(
                        height: 15.h,
                        width: 15.h,
                        child: Roulette(
                          child: CircularProgressIndicator(
                              strokeWidth: 1, color: labelColor),
                        ),
                      ),
                      const XSpace(10),
                    ],
                  ),
                ),
                CustomText(
                  label,
                  size: fontSize,
                  color: labelColor,
                  weight: labelWeight,
                )
              ],
            ),
          ),
        ), // Red will correctly spread over gradient
      ),
    );
  }
}
