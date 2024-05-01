import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/resource/app_colors.dart';

class CommonRoundWidget extends StatelessWidget {
  final Color? color;
  final Color? shadowColor;
  final double? size;
  final EdgeInsets? margin;
  final Widget? child;

  CommonRoundWidget({
    super.key,
    this.color,
    this.shadowColor,
    this.size,
    this.margin,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: Alignment.center,
      width: size ?? 55,
      height: size ?? 55,
      decoration: BoxDecoration(
        color: color ?? AppColors.of.primary,
        shape: BoxShape.circle,
        //border corner radius
        boxShadow: [
          BoxShadow(
            color: (color ?? AppColors.of.primary).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
