import 'package:faramove_test/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMultilineText extends StatelessWidget {
  const CustomMultilineText(this.text,
      {Key? key,
      required this.size,
      this.weight = FontWeight.normal,
      this.color = AppColors.dark,
      this.align = TextAlign.left,
      this.maxlines = 3,
      this.lineSpacing = 1.5,
      this.decoration = TextDecoration.none,
      this.width = 200})
      : super(key: key);
  final String text;
  final num size;
  final double width;
  final FontWeight weight;
  final Color color;
  final TextAlign align;
  final int maxlines;
  final double lineSpacing;
  final TextDecoration decoration;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      child: Text(
        text,
        textAlign: align,
        softWrap: false,
        maxLines: maxlines,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.mulish(
            fontSize: size.sp,
            fontWeight: weight,
            color: color,
            height: lineSpacing,
            decoration: decoration),
      ),
    );
  }
}
