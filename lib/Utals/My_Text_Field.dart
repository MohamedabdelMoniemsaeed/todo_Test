import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String hinttext;
  TextEditingController controller;
MyTextField(this.hinttext,this.controller);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
      labelText: hinttext,
      ),
      
    );
  }
}