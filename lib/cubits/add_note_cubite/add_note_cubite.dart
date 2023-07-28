import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constant.dart';
import '../../models/note_model.dart';
import 'add_note_stats.dart';

class AddNoteCubit extends Cubit<AddNoteStats> {
  AddNoteCubit() : super(AddNoteInitialStat());
  addNote(NoteModel noteModel) async {
    emit(AddNoteLoadingStat());
    try {
      var hiveBox = Hive.box<NoteModel>(kNotesBox);
      await hiveBox.add(noteModel);
      
      emit(AddNoteSucessStat());
    } catch (e) {
       // ignore: avoid_print
       print(e.toString());

      emit(AddNoteFailureStat(e.toString()));
    }
  }
}
