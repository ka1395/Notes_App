import 'package:flutter/material.dart';
import 'package:notes_app/view/search_view/search_view.dart';
import '../../../constant.dart';
import 'add_note_bottomsheet.dart';
import '../../../help_widgets/custom_appbar.dart';
import 'note_item_gridview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppBar(
              title: "Notes",
              iconData: Icons.search,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchView(),
                    ));
              },
            ),
          ),
          const Expanded(child: NoteItemGridView()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
