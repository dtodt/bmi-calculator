import 'package:bmi_calculator/app_colors.dart';
import 'package:bmi_calculator/app_layout.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Text(
              'Your Results',
              style: AppLayout.titleTextStyle,
            ),
            padding: EdgeInsets.only(
              left: 20.0,
              top: 30.0,
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: AppColors.cardActive,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: AppLayout.bmiLabelTextStyle,
                  ),
                  Text(
                    '28.3',
                    style: AppLayout.bmiScoreTextStyle,
                  ),
                  Text(
                    'blablablablablablablablablablablablablablablablablabla',
                    style: AppLayout.bmiDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
