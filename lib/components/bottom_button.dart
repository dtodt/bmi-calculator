import 'package:bmi_calculator/util/app_colors.dart';
import 'package:bmi_calculator/util/app_layout.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.label,
    @required this.onPress,
  });

  final String label;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            label,
            style: AppLayout.buttonTextStyle,
          ),
        ),
        color: AppColors.accent,
        margin: EdgeInsets.only(
          top: AppLayout.widgetMargin,
        ),
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        height: AppLayout.bottomContainerHeight,
        width: double.infinity,
      ),
      onTap: onPress,
    );
  }
}
