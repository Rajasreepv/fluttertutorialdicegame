import 'dart:math';

import 'package:flutter/material.dart';

class dicepage extends StatefulWidget {
  const dicepage({super.key});

  @override
  State<dicepage> createState() => _dicepageState();
}

int leftdicenum = 1;
int rightdicenum = 1;

class _dicepageState extends State<dicepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Dice Game"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftdicenum = Random().nextInt(6) + 1;
                  });
                  print("First  button pressed");
                },
                child: Image.asset(
                  "images/dice$leftdicenum.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  rightdicenum = Random().nextInt(6) + 1;
                });
                print("Second  button pressed");
              },
              child: Image.asset(
                "images/dice$rightdicenum.png",
                width: 100,
                height: 100,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
