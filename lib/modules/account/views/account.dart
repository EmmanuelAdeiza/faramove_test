import 'package:faramove_test/core/asset_files.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(const AnimationAssets().empty2),
      ),
    );
  }
}
