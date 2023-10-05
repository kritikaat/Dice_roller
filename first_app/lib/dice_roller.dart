import 'dart:math';

import 'package:flutter/material.dart';
var randomizer = Random();

class DiceRoller extends StatefulWidget{

   const DiceRoller ({super.key});
   @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

var roll = 2;

void rolldice() {
  
  setState(() {
    roll = randomizer.nextInt(6) + 1;//generates number between 1 to 6
  });
  
}
  @override
  Widget build( context) {
      return Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/dice-$roll.png',
            width: 200,
          ),
          TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                 // padding: const EdgeInsets.only(top: 20),
                  foregroundColor: const Color.fromARGB(255, 13, 0, 0),
                  textStyle: const TextStyle(fontSize: 28)
                  ),
              child: const Text('Roll dice'))
        ]
        );
  }

}
  

 