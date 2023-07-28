import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/search_cubite/search_cubit.dart';
import '../../../cubits/search_cubite/search_stats.dart';
import '../../../models/note_model.dart';
import '../../note_view/widgets/note_item.dart';

class NoteItemListView extends StatelessWidget {
  const NoteItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStats>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<SearchCubit>(context).notesSearch ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemCount: notes.length,
            itemBuilder: (context, index) => NoteItem(
              note: notes[index],
            ),
          ),
        );
      },
    );
  }
}
