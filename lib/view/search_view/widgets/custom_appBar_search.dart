import 'package:flutter/material.dart';

import '../../note_view/widgets/custom_search_icon.dart';

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
        SizedBox(
          width: 15,
        ),
        const Text(
          "Search",
          style: const TextStyle(fontSize: 28),
        ),
      ],
    );
  }
}
