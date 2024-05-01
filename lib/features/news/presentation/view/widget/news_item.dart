import 'package:flutter/material.dart';
import 'package:flutter_demo/core/resource/text_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resource/size_utils.dart';
import '../../../../../widgets/function_widgets.dart';

class NewsItem extends StatelessWidget {
  final String? image;
  final String? title;

  const NewsItem(this.image, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: spacingTinyW),
      leading: cacheImage(
        image ?? "",
        width: 100.w,
        height: 100.h,
      ),
      title: Text(
        title ?? "",
        maxLines: 2,
        style: context.textBodyMedium,
      ),
    );
  }
}
