import 'package:bmi_calculator/app_layout.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({@required this.colour, this.child, this.onTap});

  final Color colour;
  final Widget child;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(AppLayout.widgetMargin),
      ),
      onTap: onTap,
    );
  }
}
