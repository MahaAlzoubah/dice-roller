import 'package:flutter/material.dart';
import 'dart:math';

final randomGenerator = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
     return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var random =2;
  void rollDice() {
    setState(() {
     random = randomGenerator.nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/images/dice-$random.png',
            width: 200,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(25),
                foregroundColor: const Color.fromARGB(255, 199, 68, 140),
                backgroundColor: const Color.fromARGB(255, 251, 233, 233),
                textStyle: const TextStyle(fontSize: 22)

              ),
              child: const Text('roll dice'))
        ]);
  }
}