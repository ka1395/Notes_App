import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Title",
          border: borderBuilder(color: Colors.white),
          enabledBorder: borderBuilder(color: Colors.white),
          focusedBorder: borderBuilder(color: primaryColor)),
      cursorColor: primaryColor,
    );
  }

  OutlineInputBorder borderBuilder({required color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
