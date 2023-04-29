import 'package:flutter/material.dart';

class AnimacaoControlada1 extends StatefulWidget {
  const AnimacaoControlada1({super.key});

  @override
  State<AnimacaoControlada1> createState() => _AnimacaoControlada1State();
}

class _AnimacaoControlada1State extends State<AnimacaoControlada1>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animationController.addListener(() {
      print(animationController.value);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = Tween(begin: 140.0, end: 70.0)
        .animate(
          CurvedAnimation(
            parent: animationController,
            curve: Curves.linear,
          ),
        )
        .value;
    final radius =
        Tween(begin: 0.0, end: 35.0).animate(animationController).value;
    final alignment = animationController.status == AnimationStatus.completed
        ? Alignment.bottomRight
        : Alignment.topCenter;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão Flutuante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GestureDetector(
          onTap: () {
            if (animationController.status == AnimationStatus.completed) {
              animationController.reverse();
            } else {
              animationController.forward();
            }
          },
          child: Align(
            alignment: alignment,
            child: Container(
              width: width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(radius),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
