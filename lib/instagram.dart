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
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple,
              Colors.purple,
              Colors.pinkAccent,
              Colors.pink,
              Colors.redAccent,
              Colors.red,
              Colors.orangeAccent,
              Colors.orange,
              Colors.yellow,
            ],
          ).createShader(bounds),
          child: const FaIcon(
            FontAwesomeIcons.instagram,
            size: 100,
          ),
        ),
      ),
    );
  }
}
