import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String hinttext;
MyTextField(this.hinttext);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
      labelText: hinttext,
      ),
      
    );
  }
}