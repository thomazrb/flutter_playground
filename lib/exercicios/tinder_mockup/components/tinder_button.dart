import 'package:flutter/material.dart';

class TinderButton extends StatelessWidget {
  final String image;
  final String text;
  const TinderButton({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset(
                  image,
                  width: 25,
                )
                /*Icon(
                icon,
                color: Colors.white,
              ),*/
                ),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
