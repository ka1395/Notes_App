import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'note_item_gridview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppBar(),
          ),
          Expanded(child: NoteItemGridView()),
        ],
      ),
    );
  }
}

