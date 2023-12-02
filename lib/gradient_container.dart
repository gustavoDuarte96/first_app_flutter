import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  GradientContainer(this.colorOne, this.colorTwo, {super.key});

  GradientContainer.purple({super.key})
    : colorOne = Colors.deepPurple,
      colorTwo = Colors.indigo;

  final Color colorOne;
  final Color colorTwo;
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice () {
    activeDiceImage = 'assets/images/dice-2.png';
  }

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorOne, 
                colorTwo
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  activeDiceImage, 
                  width: 200,
                ),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(top:20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: const Text('Roll Dice'),
                ),
              ]
            ),
          ),
        );
  }
}