import 'package:animate_do/animate_do.dart';
import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/global/global.dart';
import 'package:faramove_test/modules/home/widgets/rect_card.dart';
import 'package:faramove_test/modules/home/widgets/tip_card.dart';
import 'package:flutter/material.dart';

class TipsToStayHealthy extends StatelessWidget {
  const TipsToStayHealthy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      duration: const Duration(seconds: 1),
      child: Column(
        children: [
          RectCard(
              height: 65,
              child: Column(
                children: const [
                  CustomMultilineText(
                    'Tips to stay healthy',
                    size: AppTextSize.title,
                    weight: FontWeight.w700,
                  ),
                  YSpace(5),
                  CustomMultilineText(
                    'Get simple health tips.',
                    size: AppTextSize.smallText,
                    weight: FontWeight.w500,
                  )
                ],
              )),
          SizedBox(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                TipCard(
                  title: 'Some of the basic things to avoid',
                  background: const BgAssets().tipBg1,
                ),
                TipCard(
                  title: 'Fruits you can take in the morning',
                  background: const BgAssets().tipBg2,
                ),
                TipCard(
                  title: 'Common Symtoms',
                  background: const BgAssets().tipBg3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
