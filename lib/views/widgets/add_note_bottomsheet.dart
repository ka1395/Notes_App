import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottmSheet extends StatelessWidget {
  const AddNoteBottmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomTextField(hint: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: "Content", maxLine: 5),
        ],
      ),
    );
  }
}
