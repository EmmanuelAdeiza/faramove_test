import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTapDetector extends StatelessWidget {
  const CustomTapDetector(
      {Key? key, this.onTap, required this.child, this.radius = 6})
      : super(key: key);
  final Function()? onTap;
  final Widget child;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(radius.r),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        borderRadius: BorderRadius.circular(radius.r),
        onTap: onTap,
        child: child,
      ),
    );
  }
}
