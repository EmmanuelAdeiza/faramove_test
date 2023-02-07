import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/app_text_styles.dart';
import 'package:faramove_test/global/box_sizing.dart';
import 'package:faramove_test/global/custom_button.dart';
import 'package:faramove_test/global/custom_text.dart';
import 'package:faramove_test/global/generic/fader.dart';
import 'package:faramove_test/modules/community/data/community_model.dart';
import 'package:faramove_test/modules/community/widgets/statistic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_stack/image_stack.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({Key? key, required this.community}) : super(key: key);
  final CommunityModel community;

  @override
  Widget build(BuildContext context) {
    List<ImageProvider> providers = [
      ...community.members.map<ImageProvider>((img) => AssetImage(
            img,
          ))
    ];

    return Fader(
      child: Container(
        height: 150.h,
        width: 335.w,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColors.grey2))),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 100.w,
                width: 100.w,
                padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                decoration: BoxDecoration(
                  // color: AppColors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(const BgAssets().randomCommunityBg),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    CustomText(
                      community.title,
                      size: AppTextSize.subHeader,
                      weight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
            const XSpace(10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                    community.description,
                    size: AppTextSize.subHeader,
                    weight: FontWeight.w500,
                  ),
                  Row(
                    children: [
                      StatisticWidget(
                        icon: const IconAssets().member,
                        value: '200+',
                      ),
                      const XSpace(3),
                      StatisticWidget(
                        icon: const IconAssets().letterbox,
                        value: '50',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageStack.providers(
                        providers: providers,
                        totalCount: community.members.length,
                        imageRadius: 25,
                        imageCount: 4,
                        imageBorderWidth: 0,
                      ),
                      const CustomButton(label: 'Join'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
