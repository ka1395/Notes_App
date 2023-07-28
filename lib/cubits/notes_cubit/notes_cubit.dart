import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_stats.dart';

import '../../constant.dart';
import '../../models/note_model.dart';

class NotesCubit extends Cubit<NotesStats> {
  NotesCubit() : super(NotesInitialStat());
  feachNotes() {
    try {
      var hiveBox = Hive.box<NoteModel>(kNotesBox);
      emit(NotesSucessStat(hiveBox.values.toList()));
    } catch (e) {
      debugPrint(e.toString());

      emit(NotesFailureStat(e.toString()));
    }
  }
}
