import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/global.dart';
import 'package:faramove_test/modules/home/widgets/widgets.dart';
import 'package:faramove_test/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          const YSpace(67),
          CustomTopBar(
            title: Row(
              children: [
                CustomTapDetector(
                    onTap: () => context.navigateTo(const AccountRoute()),
                    child:
                        Image.asset(const ImageAssets().avatar, width: 40.w)),
                const XSpace(10),
                const CustomText(
                  "Hi, Sarah",
                  size: 20,
                  weight: FontWeight.w600,
                  animate: true,
                ),
              ],
            ),
            actions: [
              SvgPicture.asset(
                const IconAssets().message,
                width: 35.w,
              ),
              const XSpace(5),
              SvgPicture.asset(
                const IconAssets().notification,
                width: 35.w,
              ),
            ],
          ),
          SizedBox(
            height: 608.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RectCard(
                      onTap: () => context.navigateTo(const AccountRoute()),
                      backgroundColor: AppColors.lightBlue,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            const IconAssets().caution,
                            width: 40.w,
                          ),
                          const XSpace(10),
                          const CustomMultilineText(
                            'Go to your profile to complete registration',
                            size: AppTextSize.smallText,
                            weight: FontWeight.w500,
                          )
                        ],
                      )),
                  const YSpace(15),
                  const QuickActions(),
                  const YSpace(10),
                  const XDivider(thickness: 8),
                  SlideInLeft(
                    child: RectCard(
                      child: const CustomText(
                        'Upcoming Session (0)',
                        size: AppTextSize.title,
                        weight: FontWeight.w700,
                      ),
                      onTap: () =>
                          context.navigateTo(const PodcastPlayingRoute()),
                    ),
                  ),
                  const XDivider(thickness: 8),
                  const TipsToStayHealthy(),
                  const YSpace(30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
