import 'package:flutter/material.dart';
import 'package:flutter_playground/exercicios/mockup_money/mockup_money.dart';
import 'package:flutter_playground/exercicios/tinder_mockup/mockup_tinder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Playground'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MockupMoney(),
                  ),
                );
              },
              child: const Text('Money Mockup'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MockupTinder(),
                  ),
                );
              },
              child: const Text('Tinder Mockup'),
            )
          ],
        ),
      ),
    );
  }
}
