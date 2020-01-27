import 'package:bmi_calculator/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppLayout {
  static const widgetMargin = 15.0;
  static const bottomContainerHeight = 80.0;

  static const buttonTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
  static const bmiLabelTextStyle = TextStyle(
    color: AppColors.labelResult,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );
  static const bmiDescriptionTextStyle = TextStyle(
    fontSize: 22.0,
  );
  static const bmiScoreTextStyle = TextStyle(
    fontSize: 100.0,
    fontWeight: FontWeight.bold,
  );
  static const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.inactive,
  );
  static const numberTextStyle = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.w900,
  );
  static const titleTextStyle = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
  );
}
