import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practise_project/registrationpage.dart';

void main()
{
  runApp(MaterialApp(home: Register(),));
}
class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
