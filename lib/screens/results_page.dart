import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/models/results_arguments.dart';
import 'package:bmi_calculator/util/app_colors.dart';
import 'package:bmi_calculator/util/app_layout.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultsArguments args = ModalRoute.of(context).settings.arguments;

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
              left: 15.0,
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
                    args.bmiResult.toUpperCase(),
                    style: AppLayout.bmiLabelTextStyle,
                  ),
                  Text(
                    args.bmiScore,
                    style: AppLayout.bmiScoreTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      args.bmiDescription,
                      style: AppLayout.bmiDescriptionTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
