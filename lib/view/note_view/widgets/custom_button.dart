import 'package:flutter/material.dart';

import '../../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, this.isLoading = false});
  final void Function() onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      color: primaryColor,
      height: 55,
      minWidth: MediaQuery.of(context).size.width,
      child: isLoading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : const Text(
              "Add",
              style: TextStyle(fontSize: 16),
            ),
    );
  }
}
