import 'package:flutter/material.dart';

class CustomAppBarSearch extends StatelessWidget {
  const CustomAppBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 28,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
       const  SizedBox(
          width: 15,
        ),
        const Text(
          "Search",
          style:  TextStyle(fontSize: 28),
        ),
      ],
    );
  }
}
