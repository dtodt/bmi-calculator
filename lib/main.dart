import 'package:bmi_calculator/app_colors.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.primary,
        sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: AppColors.inactive,
            thumbColor: AppColors.accent,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15,
            ),
            overlayColor: AppColors.accentAlpha,
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 30,
            )),
      ),
      home: InputPage(),
    );
  }
}
