import 'package:flutter/material.dart';
import 'package:flutter_demo/core/resource/size_utils.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Size? size;
  final TextStyle? textStyle;
  final String? label;

  const CommonButton(
      {super.key,
      this.onPressed,
      this.backgroundColor,
      this.textColor,
      this.size,
      this.textStyle,
      @required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.black,
          fixedSize: size ?? Size(context.width(), 53),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 2.0,
        ),
        onPressed: onPressed ?? () {},
        child: FittedBox(
          child: Text(
            label ?? "",
            maxLines: 1,
            style: textStyle ??
                TextStyle(
                    fontSize: 18,
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w500),
          ),
        ));
  }
}
