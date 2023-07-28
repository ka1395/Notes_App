import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/note_model.dart';

import '../../../cubits/add_note_cubite/add_note_cubite.dart';
import '../../../cubits/add_note_cubite/add_note_stats.dart';
import '../../../help_widgets/custom_text_field.dart';
import 'custom_button.dart';

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
            height: 50,
          ),
          BlocBuilder<AddNoteCubit, AddNoteStats>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoadingStat ? true : false,
                  onPressed: () {
// yMMMMd
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat.yMMMd().format(currentDate);
                    if (globalKey.currentState!.validate()) {
                      globalKey.currentState!.save();
                      NoteModel noteModel = NoteModel(
                        title!,
                        content!,
                        formattedCurrentDate .toString(),
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  });
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
