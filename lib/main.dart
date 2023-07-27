import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constant.dart';
import 'models/note_model.dart';
import 'view/note_view/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: "Poppins",
      ),
      home: const NotesView(),
    );
  }
}
