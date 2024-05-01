import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Different spacing
double spacingXTinyW = 2.w;
double spacingTinyW = 5.w;
double spacingSmallW = 12.w;
double spacingMediumW = 16.w;
double spacingLargeW = 20.w;
double spacingXLargeW = 24.w;
double spacingXXLargeW = 30.w;

double spacingTinyH = 5.h;
double spacingSmallH = 8.h;
double spacingMediumH = 12.h;
double spacingLargeH = 18.h;
double spacingXLargeH = 22.h;
double spacingXXLargeH = 28.h;

/// Different font sizes
double fontTiny = 7.sp;
double fontSmall = 12.sp;
double fontMedium = 15.sp;
double fontLarge = 20.sp;
double fontXLarge = 25.sp;

extension Sizing on BuildContext {
  double width() => MediaQuery.of(this).size.width;

  double height() => MediaQuery.of(this).size.height;

  double wRatio(double ratio) => MediaQuery.of(this).size.width * ratio;

  double hRatio(double ratio) => MediaQuery.of(this).size.height * ratio;
}
