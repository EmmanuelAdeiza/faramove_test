import 'package:faramove_test/core/asset_files.dart';
import 'package:faramove_test/global/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(const AnimationAssets().empty2),
            const YSpace(50),
            const CustomText('Accounts',
                size: AppTextSize.title, weight: FontWeight.w600)
          ],
        ),
      ),
    );
  }
}
