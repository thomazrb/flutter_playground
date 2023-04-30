import 'package:flutter/material.dart';

class ListItem2 extends StatefulWidget {
  final String title;
  final String image;
  final String text;
  const ListItem2(
      {super.key,
      required this.title,
      required this.image,
      required this.text});

  @override
  State<ListItem2> createState() => _ListItem2State();
}

class _ListItem2State extends State<ListItem2> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    animationController.addListener(() {
      //print(animationController.value);
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  bool toggle = true;
  double turns = 0;
  @override
  Widget build(BuildContext context) {
    final turns =
        Tween(begin: 0.0, end: -3.1415).animate(animationController).value;
    final heightFactor =
        Tween(begin: 0.0, end: 1.0).animate(animationController).value;
    return Column(children: [
      InkWell(
        onTap: () {
          if (animationController.status == AnimationStatus.completed) {
            animationController.reverse();
          } else {
            animationController.forward();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Transform.rotate(
                angle: turns,
                child: const Icon(
                  Icons.expand_more,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
      ClipRect(
        child: Align(
          alignment: Alignment.bottomCenter,
          heightFactor: heightFactor,
          child: Column(
            children: [
              Image.asset(
                widget.image,
                width: 50,
              ),
              Text(
                widget.text,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
