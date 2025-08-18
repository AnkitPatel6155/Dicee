import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var diceNumberleft = 1;
  var diceNumberright = 2;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicee', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
          backgroundColor: Colors.red[400],
          body: GestureDetector(
            onTap: () {
              print('Tab');
              var random1 = 1 + Random().nextInt(5) + 1;
              var random2 = 1 + Random().nextInt(5) + 1;

              setState(() {
                diceNumberleft = random1;
                diceNumberright = random2;
              });
            },
            child: Center(
              child: Row(
                      children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('images/dice${diceNumberleft}.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('images/dice${diceNumberright}.png')),
                ),
              ),
                      ],
                  ),
            ),
          ),
    );
  }
}

