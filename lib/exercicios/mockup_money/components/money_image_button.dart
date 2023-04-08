import 'package:flutter/material.dart';

class MoneyImageButton extends StatelessWidget {
  final String image;
  final String text;
  const MoneyImageButton({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/google.png',
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
