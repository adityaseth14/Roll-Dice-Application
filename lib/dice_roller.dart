import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImages = 'assets/images/dice-1.png';
  var currentDiceRoll = 1;
  void rollDice() {
    // var diceroll=Random().nextInt(6)+1;
    setState(() {
      // activeDiceImages = 'assets/images/dice-$diceroll.png';
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(/*activeDiceImages*/'assets/images/dice-$currentDiceRoll.png', width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.amber,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
