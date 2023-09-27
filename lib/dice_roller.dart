import 'package:flutter/material.dart';
import 'dart:math';


final randomizer = Random();


class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

 /* var diceRoll = 'assets/images/1.png';
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
      diceRoll =  'assets/images/$currentDiceRoll.png'

    });*/

  var currentDiceRoll;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;

    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/$currentDiceRoll.png',   // during secong method put here // diceRoll variable
          height: 200,
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 25),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            child: Text('Roll Dice'))
      ],
    );
  }
}
