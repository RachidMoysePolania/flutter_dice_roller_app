import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //this.outputText referes to the variable outputText and its type.
  const StyledText(this.outputText, {super.key});

  //class variable (property)
  //This uses final because it doesn't change after get the value
  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 22.2,
        fontFamily: "FiraCode",
      ),
    );
  }
}
