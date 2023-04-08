import 'package:flutter/material.dart';

class MoneyLogo extends StatelessWidget {
  const MoneyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xff5e5ce5),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xff5e5ce5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
            )
          ],
        ),
        Container(
          width: 50,
          height: 110,
          decoration: const BoxDecoration(
            color: Color(0xff5e5ce5),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
        ),
      ],
    );
  }
}
