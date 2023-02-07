import 'package:faramove_test/core/utilities/colors.dart';
import 'package:flutter/material.dart';

class XDivider extends StatelessWidget {
  const XDivider({
    Key? key,
    this.color = AppColors.grey1,
    this.thickness = 1,
  }) : super(key: key);

  final Color color;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
    );
  }
}
