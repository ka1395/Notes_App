import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLine = 1, this.onsave, this.onChanged});
  final String hint;
  final int maxLine;
  final Function(String?)? onsave;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      onChanged: onChanged,
      onSaved: onsave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: hint,
          border: borderBuilder(color: Colors.white),
          enabledBorder: borderBuilder(color: Colors.white),
          focusedBorder: borderBuilder(color: primaryColor)),
      cursorColor: primaryColor,
    );
  }

  OutlineInputBorder borderBuilder({required color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
