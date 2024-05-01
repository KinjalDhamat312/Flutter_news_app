import 'package:flutter/material.dart';

extension TextStyleTheme on BuildContext {
  TextStyle? get textTitleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get textTitleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get textTitleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get textBodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get textBodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get textBodySmall => Theme.of(this).textTheme.bodySmall;
}
