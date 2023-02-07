import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PodcastDetailsAndControl extends StatelessWidget {
  const PodcastDetailsAndControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText('10 reasons',
                    size: AppTextSize.title, weight: FontWeight.bold),
                CustomText('Stay Inspired- Episode 1',
                    size: AppTextSize.subHeader, color: AppColors.grey3),
              ],
            ),
            SvgPicture.asset(const IconAssets().volume, width: 24.sp),
          ],
        ),
        const YSpace(20),
        ProgressBar(
          progress: const Duration(minutes: 1, seconds: 53),
          buffered: const Duration(milliseconds: 500),
          total: const Duration(minutes: 3, seconds: 46),
          progressBarColor: AppColors.blue,
          baseBarColor: AppColors.blue.withOpacity(0.5),
          bufferedBarColor: AppColors.blue.withOpacity(0.7),
          thumbColor: AppColors.blue,
          barHeight: 4.0,
          thumbRadius: 7.0,
          timeLabelPadding: 8.0,
          timeLabelType: TimeLabelType.remainingTime,
          timeLabelTextStyle: TextStyle(
            color: AppColors.dark,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          onSeek: (duration) {
            // _player.seek(duration);
          },
        ),
        const YSpace(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText('1x',
                size: AppTextSize.title, weight: FontWeight.bold),
            Row(

              children: [
                SvgPicture.asset(const IconAssets().skipBackward, width: 28.sp),
                const XSpace(5),
                SvgPicture.asset(const IconAssets().play, width: 74.sp),
                const XSpace(5),
                SvgPicture.asset(const IconAssets().skipForward, width: 28.sp),
              ],
            ),
            const XSpace(20),
          ],
        ),
      ],
    );
  }
}
