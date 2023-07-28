import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_stats.dart';

import '../../constant.dart';
import '../../models/note_model.dart';

class NotesCubit extends Cubit<NotesStats> {
  NotesCubit() : super(NotesInitialStat());
  List<NoteModel>? notes;
  feachNotes() {
    var hiveBox = Hive.box<NoteModel>(kNotesBox);
    notes = hiveBox.values.toList();
    emit(NotesSucssesStat());
  }
}
