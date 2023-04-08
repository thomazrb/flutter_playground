import 'package:flutter/material.dart';

class MockupTinder extends StatelessWidget {
  const MockupTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffe8566f),
        Color(0xffed6d65),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Container(),
      ),
    );
  }
}
