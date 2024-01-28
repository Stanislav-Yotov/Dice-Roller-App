import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';

final randomizer = Random(); // Create the object in memory only once

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        child: const StyledText('Roll Dice'),
      )
    ]);
  }
}
