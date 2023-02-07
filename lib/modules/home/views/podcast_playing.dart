import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/global.dart';
import 'package:faramove_test/modules/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PodcastPlaying extends StatelessWidget {
  const PodcastPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackdrop(
        child: PodcastTranscript(
      body: Column(
        children: [
          const YSpace(67),
          const PodcastTopBar(title: 'Stay Motivated Ep. 1'),
          const YSpace(5),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Column(
                  children: [
                    const PodcastCover(),
                    const YSpace(70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomText(
                              '10 reasons',
                              size: AppTextSize.title,
                              weight: FontWeight.bold,
                            ),
                            CustomText(
                              'Stay Inspired- Episode 1',
                              size: AppTextSize.subHeader,
                              color: AppColors.grey3,
                            ),
                          ],
                        ),
                        SvgPicture.asset(const IconAssets().volume,
                            width: 24.sp),
                      ],
                    ),
                    const YSpace(20),
                    const PodcastDetailsAndControl(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
