import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}


class _DiceRollerState extends State<DiceRoller> {
  var changeDice = 'assets/images/dice-2.png';
  void rollDice() {
    var diceRoll = randomizer.nextInt(6)+1;
    setState(() {
      changeDice = 'assets/images/dice-$diceRoll.png';
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          changeDice,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(

              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: const Color.fromARGB(255, 135, 1, 1),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
