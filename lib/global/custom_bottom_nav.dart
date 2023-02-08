import 'package:auto_route/auto_route.dart';
import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      backgroundColor: AppColors.white.withOpacity(.9),
      elevation: 0,
      items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                const IconAssets().home,
                width: 20.sp,
                color: tabsRouter.activeIndex == 0
                    ? AppColors.blue
                    : AppColors.grey3,
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                const IconAssets().actions,
                width: 20.sp,
                color: tabsRouter.activeIndex == 1
                    ? AppColors.blue
                    : AppColors.dark,
              ),
            ),
            label: 'Resources'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                const IconAssets().calendar,
                width: 20.sp,
                color: tabsRouter.activeIndex == 2
                    ? AppColors.blue
                    : AppColors.dark,
              ),
            ),
            label: "Session"),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                const IconAssets().community,
                width: 20.sp,
                color: tabsRouter.activeIndex == 3
                    ? AppColors.blue
                    : AppColors.dark,
              ),
            ),
            label: 'Community'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                const IconAssets().profile,
                width: 20.sp,
                color: tabsRouter.activeIndex == 4
                    ? AppColors.blue
                    : AppColors.dark,
              ),
            ),
            label: "Account"),
      ],
      showSelectedLabels: true,
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.dark,
      currentIndex: tabsRouter.activeIndex,
      onTap: (index) => tabsRouter.setActiveIndex(index),
    );
  }
}
