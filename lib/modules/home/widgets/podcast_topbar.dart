import 'package:auto_route/auto_route.dart';
import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/global/box_sizing.dart';
import 'package:faramove_test/global/custom_text.dart';
import 'package:faramove_test/global/generic/custom_tap_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PodcastTopBar extends StatelessWidget {
  const PodcastTopBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Row(
        children: [
          Row(
            children: [
              CustomTapDetector(
                  onTap: () => context.popRoute(),
                  child: const Icon(FeatherIcons.chevronDown)),
              const XSpace(10),
              CustomText(
                title,
                size: 20,
                weight: FontWeight.w600,
                animate: true,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              SvgPicture.asset(
                const IconAssets().save,
                width: 20.w,
              ),
              const XSpace(15),
              SvgPicture.asset(
                const IconAssets().share,
                width: 20.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}
