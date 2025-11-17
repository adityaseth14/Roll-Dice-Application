// import 'dart:math';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.bottomCenter;
const endAlignment = Alignment.topCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // const GradientContainer.purple({super.key}) contructor making can be accessed with a dot
  //   : color1 = Colors.purple,
  //     color2 = Colors.deepOrange;
  // final list<Colors>color can also be used to get multiple color inputs
  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      // child: Center(child: StyledText('HELLO')),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
