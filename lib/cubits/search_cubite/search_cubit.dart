import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';

import '../../models/note_model.dart';
import 'search_stats.dart';

class SearchCubit extends Cubit<SearchStats> {
  SearchCubit() : super(SearchInitialStat());
  List<NoteModel>? notesSearch;
  feachSearchData(String messSearch) {
    var hiveBox = Hive.box<NoteModel>(kNotesBox);
    if (messSearch == '') {
      notesSearch = [];
    }else{
        notesSearch = hiveBox.values.where((element) {
      return element.title.indexOf(messSearch) >= 0 ||
          element.contnt.indexOf(messSearch) >= 0;
    }).toList();
    }
  
    emit(SearchSucssesStat());
  }
}
