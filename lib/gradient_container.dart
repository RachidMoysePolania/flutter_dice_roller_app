import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basics/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Separating code into reusables pieces
class GradientContainer extends StatelessWidget {
  //constructor function
  //forwarding the got key value to the parent class in the same key parameter
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  //con esto estamos haciendo override del metodo build en StatelessWidget
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        //To pass multiples childs we pass in the same line
        child: DiceRoller(),
      ),
    );
  }
}
