abstract class AddNoteStats {}

class AddNoteInitialStat extends AddNoteStats {}

class AddNoteLoadingStat extends AddNoteStats {}

class AddNoteSucessStat extends AddNoteStats {}

class AddNoteFailureStat extends AddNoteStats {
  final String error;

  AddNoteFailureStat(this.error);
}
