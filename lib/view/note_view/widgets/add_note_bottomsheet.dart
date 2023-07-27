import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../help_widgets/custom_text_field.dart';
import 'custom_button.dart';

class AddNoteBottmSheet extends StatelessWidget {
  const AddNoteBottmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNotesForm(),
      ),
    );
  }
}

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: "Title",
            onsave: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: "Content",
            maxLine: 5,
            onsave: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 150,
          ),
          CustomButton(onPressed: () {
            if (globalKey.currentState!.validate()) {
              globalKey.currentState!.save();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}