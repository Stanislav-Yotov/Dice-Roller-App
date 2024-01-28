import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAllign = Alignment.topLeft;
const endAllign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAllign,
          end: endAllign,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
