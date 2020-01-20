import 'package:bmi_calculator/app_colors.dart';
import 'package:bmi_calculator/app_layout.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key key, @required this.icon, @required this.label})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: AppColors.textInactive,
        ),
        SizedBox(
          height: AppLayout.widgetMargin,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: AppColors.textInactive,
          ),
        )
      ],
    );
  }
}
