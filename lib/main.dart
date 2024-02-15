import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('Dice Roll',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 15, 209, 209),
            Color.fromARGB(255, 2, 73, 66),
          ], end: Alignment.topLeft, begin: Alignment.bottomRight)),
          child: Center(
            child: Image.asset('assets/images/dice-1.png',
            width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
