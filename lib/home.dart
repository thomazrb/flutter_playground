import 'package:flutter/material.dart';
import 'package:flutter_playground/exercicios/animacao_controlada/animacao_controlada1.dart';
import 'package:flutter_playground/exercicios/animacao_controlada/animacao_controlada2.dart';
import 'package:flutter_playground/exercicios/animacao_implicita/animacao_implicita1.dart';
import 'package:flutter_playground/exercicios/animacao_implicita/animacao_implicita2.dart';
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
                final route = MaterialPageRoute(
                  builder: (context) => const MockupMoney(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Money Mockup'),
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const MockupTinder(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Tinder Mockup'),
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const AnimacaoImplicita1(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Animações Implícitas 1'),
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const AnimacaoImplicita2(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Animações Implícitas 2'),
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const AnimacaoControlada1(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Animações Controladas 1'),
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const AnimacaoControlada2(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Animações Controladas 2'),
            )
          ],
        ),
      ),
    );
  }
}
