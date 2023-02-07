import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:faramove_test/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    Key? key,
    required this.size,
    this.weight = FontWeight.normal,
    this.color = AppColors.dark,
    this.align = TextAlign.left,
    this.textDecoration = TextDecoration.none,
    this.onTap,
    this.valueType,
    this.width = 200,
    this.height = 1,
    this.textScaleFactor = 1.0,
    this.animate = false,
  }) : super(key: key);
  final String text;
  final num size;
  final FontWeight weight;
  final Color color;
  final TextAlign align;
  final TextDecoration textDecoration;
  final Function()? onTap;
  final double textScaleFactor, width, height;
  final String? valueType;
  final bool animate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: !animate
          ? Text(
              text,
              textAlign: align,
              softWrap: false,
              maxLines: 3,
              textScaleFactor: textScaleFactor,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.mulish(
                  fontSize: size.spMin,
                  fontWeight: weight,
                  color: color,
                  decoration: textDecoration),
            )
          : AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(text,
                    textStyle: GoogleFonts.mulish(
                        fontSize: size.spMin,
                        fontWeight: weight,
                        color: color,
                        height: height),
                    speed: const Duration(milliseconds: 100)),
              ],
            ),
    );
  }
}
