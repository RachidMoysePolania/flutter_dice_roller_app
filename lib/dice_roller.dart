import 'package:flutter/material.dart';
import 'package:flutter_basics/styled_text.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  //StatefulWidgets doesn't have build method.
  //Have createState() {}
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//This class will return a state
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  //Method to roll the dice
  void rollDice() {
    //To be able to rexecute the build method to update our dice image
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              shadowColor: Colors.black,
              padding: const EdgeInsets.only(top: 20),
            ),
            child: const StyledText("Roll Dice"))
      ],
    );
  }
}
