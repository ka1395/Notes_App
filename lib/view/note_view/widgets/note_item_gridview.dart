import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_stats.dart';
import 'package:notes_app/models/note_model.dart';

import 'note_item.dart';

class NoteItemGridView extends StatelessWidget {
  const NoteItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStats>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.16,
              children: List.generate(
                  notes.length,
                  (index) => NoteItem(
                        note: notes[index],
                      ))),
        );
      },
    );
  }
}
