import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/add_note_cubite/add_note_cubite.dart';
import '../../../cubits/add_note_cubite/add_note_stats.dart';
import '../../../cubits/notes_cubit/notes_cubit.dart';
import 'add_notes_from.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteStats>(
          listener: (context, state) {
            if (state is AddNoteSucessStat) {
              BlocProvider.of<NotesCubit>(context).feachNotes();

              Navigator.pop(context);
            }

            if (state is AddNoteFailureStat) {
              debugPrint(state.error);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNoteLoadingStat ? true : false,
                child: const SingleChildScrollView(child: AddNotesForm()));
          },
        ),
      ),
    );
  }
}
