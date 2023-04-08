import 'package:flutter/material.dart';

class MoneyPurpleButton extends StatelessWidget {
  final String text;
  const MoneyPurpleButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 370,
      decoration: BoxDecoration(
        color: const Color(0xff5e5ce5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
