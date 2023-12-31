import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'bloc_observer.dart';
import 'constant.dart';
import 'cubits/notes_cubit/notes_cubit.dart';
import 'models/note_model.dart';
import 'view/note_view/notes_view.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
    Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);
  
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
            create: (context) => NotesCubit()..feachNotes(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          fontFamily: "Poppins",
        ),
        home: const NotesView(),
      ),
    );
  }
}
