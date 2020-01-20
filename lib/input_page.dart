import 'package:bmi_calculator/app_colors.dart';
import 'package:flutter/material.dart';

final containerMargin = 15.0;
final bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    colour: AppColors.secondary,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: AppColors.secondary,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: AppColors.secondary,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: AppColors.secondary,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: AppColors.secondary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.accent,
            margin: EdgeInsets.only(
              top: containerMargin,
            ),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(containerMargin),
    );
  }
}
