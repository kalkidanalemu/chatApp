import 'package:chatapp/component/my_text_field.dart';
import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText

});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200 )
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:BorderSide(color: Colors.white),
        ),
        fillColor:Colors.grey.shade100,
          filled: true,
          hintText: hintText,
        hintStyle: TextStyle(color:Colors.grey)
      ),
    );


  }
}
