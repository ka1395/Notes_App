import 'package:notes_app/models/note_model.dart';

abstract class NotesStats {}

class NotesInitialStat extends NotesStats {}

class NotesLoadingStat extends NotesStats {}

class NotesSucessStat extends NotesStats {
final  List<NoteModel> notes;

  NotesSucessStat(this.notes);
}

class NotesFailureStat extends NotesStats {
  final String error;

  NotesFailureStat(this.error);
}
