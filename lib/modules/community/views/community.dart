import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/global/global.dart';
import 'package:faramove_test/modules/community/data/community_data.dart';
import 'package:faramove_test/modules/community/data/community_model.dart';
import 'package:faramove_test/modules/community/widgets/community_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    List<CommunityModel> communities = CommunityData().communities;
    return Scaffold(
      body: Column(
        children: [
          const YSpace(67),
          CustomTopBar(
            title: const CustomText("Community",
                size: 20, weight: FontWeight.w600),
            actions: [
              SvgPicture.asset(
                const IconAssets().search,
                width: 35.w,
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: communities.length,
                  itemBuilder: ((context, index) {
                    CommunityModel community = communities[index];
                    return CommunityCard(community: community);
                  })),
            ),
          ),
          const YSpace(8),
        ],
      ),
    );
  }
}
