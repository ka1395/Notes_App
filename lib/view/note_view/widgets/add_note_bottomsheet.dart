import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_stats.dart';

import 'add_notes_from.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottmSheet extends StatelessWidget {
  const AddNoteBottmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer(
          listener: (context, state) {
            if (state is AddNoteSucessStat) {
              Navigator.pop(context);
            }

            if (state is AddNoteFailureStat) {
              print(state.error);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoadingStat ? true : false,
                child: const AddNotesForm());
          },
        ),
      ),
    );
  }
}
