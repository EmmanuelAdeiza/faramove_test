import 'package:animate_do/animate_do.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({
    Key? key,
    required this.title,
    required this.actions,
  }) : super(key: key);

  final Widget title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.grey2))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child: Row(
          children: [
            Flash(child: title),
            const Spacer(),
            Row(
              children: actions,
            )
          ],
        ),
      ),
    );
  }
}
