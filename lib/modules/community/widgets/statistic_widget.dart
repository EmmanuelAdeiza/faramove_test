import 'package:faramove_test/global/app_text_styles.dart';
import 'package:faramove_test/global/box_sizing.dart';
import 'package:faramove_test/global/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StatisticWidget extends StatelessWidget {
  const StatisticWidget({
    Key? key,
    required this.icon,
    required this.value,
  }) : super(key: key);

  final String icon;

  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          icon,
          width: 20.sp,
        ),
        const XSpace(3),
        CustomText(value, size: AppTextSize.subHeader),
      ],
    );
  }
}
