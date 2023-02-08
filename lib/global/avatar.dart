import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avatar extends StatelessWidget {
  const Avatar(
      {Key? key,
      this.isLocal = false,
      this.height = 75,
      required this.path,
      this.onTap,
      this.bgColor = Colors.grey})
      : super(key: key);

  final bool isLocal;
  final String path;
  final Color bgColor;
  final double height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: bgColor.withOpacity(.2)),
        child: isLocal
            ? Image.file(
                File(path),
                fit: BoxFit.cover,
                width: height.h,
                height: height.h,
              )
            : Image.network(
                path,
                fit: BoxFit.cover,
                width: height.h,
                height: height.h,
              ),
      ),
    );
  }
}
