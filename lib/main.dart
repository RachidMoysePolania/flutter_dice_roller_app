//Dependencies should be handled in the pubspec.yaml
import 'package:flutter/material.dart';
import 'package:flutter_basics/gradient_container.dart';

/*
runApp(); is the main instruction in the flutter
But to be able to execute the run app we need to enclose this function in a main function

Flutter UIs are built with widgets
MaterialApp create a instance of type Widget and then we can ovewrite it.

MaterialApp function is provided by flutter
When a function is define in the parameters with {} like this: MaterialApp({param1, param2, paramN})
It is not a positional argument functions, is a named parameters. doesnt matter the order
you must specify the param name and the value like this: MaterialApp({param1: value})
Positional parameters are required and must not be ommited.
Named parameters are optional and can be ommitted.
we can make required named parameters like this: MaterialApp({required param1, required param2, paramN})


The home parameter in the MaterialApp functions define to display something on the screen.
Home define which widget will should display inside of the app

Const helps Dart optimize runtime performance storing in device memory the entire widget
Const allow to reuse the already store in memory widget
Const also allow create constant variables

question mark at the end of a type indicate that a value can be nothing or of its type
like Color? the value can be Color type or null

Decorations allow us to decorate all child arguments in Container
*/
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 84, 32, 173),
            Color.fromARGB(255, 67, 31, 129),
            Color.fromARGB(255, 47, 16, 102),
          ],
        ),
      ),
    ),
  );
}
