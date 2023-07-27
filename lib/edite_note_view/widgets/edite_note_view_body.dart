import 'package:flutter/material.dart';
import 'package:notes_app/help_widgets/custom_appbar.dart';

import '../../help_widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: "Edite Note", iconData: Icons.done),
          SizedBox(
            height: 50,
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
