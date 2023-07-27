import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_note_stats.dart';

class AddNoteCubit extends Cubit<AddNoteStats>{
  AddNoteCubit():super(AddNoteInitialStat());

}