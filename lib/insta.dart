import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(home: Insta()));
}

class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purpleAccent,
              Colors.purple,
              Colors.pink,
              Colors.redAccent,
              Colors.red,
              Colors.orange,
              Colors.yellowAccent,
            ],
          ).createShader(bounds),
          child: const FaIcon(
            FontAwesomeIcons.instagram,
            size: 90,
          ),
        ),
      ),
    );
  }
}
