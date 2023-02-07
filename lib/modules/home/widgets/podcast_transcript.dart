import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PodcastTranscript extends StatelessWidget {
  const PodcastTranscript({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      renderPanelSheet: false,
      backdropEnabled: true,
      backdropColor: AppColors.blue.withOpacity(0.5),
      minHeight: 90,
      color: AppColors.blue,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      panel: _floatingPanel(),
      collapsed: _floatingCollapsed(),
      body: body,
    );
  }
}

Widget _floatingCollapsed() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    decoration: const BoxDecoration(
      color: AppColors.blue,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
    ),
    margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              'Transcript',
              size: AppTextSize.title,
              color: AppColors.white,
              weight: FontWeight.w600,
            ),
            Container(
              height: 30.h,
              width: 96.w,
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(.2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomText(
                    'EXPAND',
                    size: AppTextSize.smallText,
                    color: AppColors.white,
                    weight: FontWeight.w600,
                  ),
                  SvgPicture.asset(const IconAssets().expand, width: 13.sp),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _floatingPanel() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: AppColors.grey2.withOpacity(.5),
          ),
        ]),
    margin: const EdgeInsets.all(24.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              'Transcript',
              size: AppTextSize.title,
              color: AppColors.white,
              weight: FontWeight.w600,
            ),
            Container(
              height: 30.h,
              width: 96.w,
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(.2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomText(
                    'COLLAPSE',
                    size: AppTextSize.smallText,
                    color: AppColors.white,
                    weight: FontWeight.w600,
                  ),
                  SvgPicture.asset(const IconAssets().expand, width: 13.sp),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
