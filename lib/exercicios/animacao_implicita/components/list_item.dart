import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final String image;
  final String text;
  const ListItem(
      {super.key,
      required this.title,
      required this.image,
      required this.text});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool toggle = true;
  double turns = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {
          setState(() {
            toggle = !toggle;
            if (toggle) {
              turns = turns + 1 / 2;
            } else {
              turns = turns - 1 / 2;
            }
          });
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
              AnimatedRotation(
                turns: turns,
                duration: const Duration(milliseconds: 200),
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
        child: AnimatedAlign(
          alignment: Alignment.bottomCenter,
          duration: const Duration(milliseconds: 200),
          heightFactor: toggle ? 0 : 1,
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
