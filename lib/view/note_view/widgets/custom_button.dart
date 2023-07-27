
import 'package:flutter/material.dart';

import '../../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      color: primaryColor,
      height: 55,
      minWidth: MediaQuery.of(context).size.width,
      child: const Text(
        "Add",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}