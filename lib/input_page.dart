import 'package:bmi_calculator/app_colors.dart';
import 'package:bmi_calculator/app_layout.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  void updateGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.MALE
                        ? AppColors.cardActive
                        : AppColors.cardInactive,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onTap: () => updateGender(Gender.MALE),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.FEMALE
                        ? AppColors.cardActive
                        : AppColors.cardInactive,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onTap: () => updateGender(Gender.FEMALE),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: AppColors.cardActive,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: AppColors.cardActive,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: AppColors.cardActive,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.accent,
            margin: EdgeInsets.only(
              top: AppLayout.widgetMargin,
            ),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

enum Gender { MALE, FEMALE }
