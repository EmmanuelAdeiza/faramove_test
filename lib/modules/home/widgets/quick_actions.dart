import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:faramove_test/global/global.dart';
import 'package:faramove_test/modules/home/widgets/quick_action.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Fader(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              'Quick Actions',
              size: AppTextSize.title,
              weight: FontWeight.w700,
            ),
            const YSpace(15),
            QuickAction(
                title: 'Book a session',
                subtitle: 'Get prompt assistance from medical professionals.',
                icon: const ImageAssets().bookASession,
                backgroundColor: AppColors.yellow,
                background: const BgAssets().bookASession),
            const YSpace(10),
            QuickAction(
                title: 'Diary',
                subtitle: 'Listen to the highlight from your previous session',
                icon: const ImageAssets().diary,
                backgroundColor: AppColors.orange,
                background: const BgAssets().diary),
            const YSpace(10),
            QuickAction(
                title: 'Virtual assistant',
                subtitle:
                    'Get easy access to converse with the assistant on how you feel.',
                icon: const ImageAssets().virtualAssitant,
                backgroundColor: AppColors.purple,
                background: const BgAssets().virtualAssitant),
          ],
        ),
      ),
    );
  }
}
