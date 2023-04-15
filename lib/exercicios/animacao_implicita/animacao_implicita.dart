import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({super.key});

  @override
  State<AnimacaoImplicita> createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    final width = toggle ? 140.0 : 70.0;
    final radius = toggle ? 0.0 : 35.0;
    final alignment = toggle ? Alignment.topCenter : Alignment.bottomRight;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão Flutuante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              toggle = !toggle;
            });
          },
          child: AnimatedAlign(
            duration: const Duration(seconds: 1),
            alignment: alignment,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: width,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(radius))),
            ),
          ),
        ),
      ),
    );
  }
}
