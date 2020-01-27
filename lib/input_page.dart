import 'package:bmi_calculator/app_colors.dart';
import 'package:bmi_calculator/app_layout.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int age = 18;
  int height = 180;
  int weight = 60;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: AppLayout.labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: AppLayout.numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: AppLayout.labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    max: 300.0,
                    min: 50.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });
                    },
                    value: height.toDouble(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: AppColors.cardActive,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: AppLayout.labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: AppLayout.numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (weight - 1 > 0) {
                                    weight--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: AppColors.cardActive,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: AppLayout.labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: AppLayout.numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (age - 1 > 0) {
                                    age--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              child: Center(
                child: Text('CALCULATE'),
              ),
              color: AppColors.accent,
              margin: EdgeInsets.only(
                top: AppLayout.widgetMargin,
              ),
              height: AppLayout.bottomContainerHeight,
              width: double.infinity,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
          )
        ],
      ),
    );
  }
}

enum Gender { MALE, FEMALE }

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
      shape: CircleBorder(),
    );
  }
}
