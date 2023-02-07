import 'package:flutter/material.dart';

class AlternateDisplay extends StatelessWidget {
  const AlternateDisplay(
      {Key? key,
      required this.control,
      this.visible = true,
      required this.initialChild,
      required this.finalChild})
      : super(key: key);
  final bool control, visible;
  final Widget initialChild, finalChild;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visible,
        child: Container(child: control ? finalChild : initialChild));
  }
}
