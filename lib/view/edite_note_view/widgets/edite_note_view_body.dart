import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/help_widgets/custom_appbar.dart';

import '../../../help_widgets/custom_text_field.dart';
import '../../../models/note_model.dart';

class EditeNoteViewBody extends StatefulWidget {
  const EditeNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteViewBody> createState() => _EditeNoteViewBodyState();
}

class _EditeNoteViewBodyState extends State<EditeNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
              title: "Edite Note",
              iconData: Icons.done,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.contnt = content ?? widget.note.contnt;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).feachNotes();
                Navigator.pop(context);
              }),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              hint: widget.note.contnt,
              onChanged: (value) {
                content = value;
              },
              maxLine: 5),
        ],
      ),
    );
  }
}
