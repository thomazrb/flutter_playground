import 'package:flutter/material.dart';
import 'package:flutter_playground/exercicios/animacao_implicita/components/list_item.dart';

class AnimacaoImplicita2 extends StatefulWidget {
  const AnimacaoImplicita2({super.key});

  @override
  State<AnimacaoImplicita2> createState() => _AnimacaoImplicita2State();
}

class _AnimacaoImplicita2State extends State<AnimacaoImplicita2> {
  String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla congue massa a nunc tincidunt, aliquet iaculis mi eleifend. Praesent lacus erat, tempus quis metus ac, mattis rutrum turpis. Aenean tempus, dolor sit amet vehicula facilisis, tortor lacus malesuada augue, at hendrerit nisl enim ut libero. Suspendisse commodo lorem iaculis erat vestibulum aliquet. Vestibulum feugiat orci felis, vel suscipit elit maximus a. Nam tempus, sem eu tempus auctor, ex odio varius dolor, sed dignissim nisl neque at elit. Sed sed efficitur mauris. Integer mollis vel metus vitae mollis. Ut sed volutpat ante, et viverra arcu. Aenean nec est sed arcu consectetur eleifend ut quis diam. Nulla facilisi. Nunc auctor nibh erat, in fringilla enim euismod ut. Sed molestie eget nunc ut faucibus. Curabitur cursus mollis aliquam. Aliquam dapibus elit quam, rutrum congue ex tincidunt vel.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScrollView'),
      ),
      body: ListView(
        children: [
          ListItem(
            title: 'My expansion tile 0',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 1',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 2',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 3',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 4',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 5',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 6',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 7',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 8',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 9',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 10',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 11',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 12',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 13',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 14',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 15',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 16',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 17',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 18',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 19',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 20',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
          ListItem(
            title: 'My expansion tile 21',
            image: 'assets/images/flutter_logo.png',
            text: text,
          ),
        ],
      ),
    );
  }
}
