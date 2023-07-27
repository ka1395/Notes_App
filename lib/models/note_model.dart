import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
  final String title;
   @HiveField(1)
  final String contnt;
    @HiveField(2)
  final String date;

  NoteModel(this.title, this.contnt, this.date);
}
