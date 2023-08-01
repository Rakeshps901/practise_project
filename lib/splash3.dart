import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practise_project/registrationpage.dart';

void main()
{
  runApp(MaterialApp(home: Splash3(),));
}
class Splash3 extends StatefulWidget {

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  void initState() {
    Timer(Duration(seconds: 1),()
    {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=>Registration2()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/rk.jpg"),
      ),
    );
  }
}
