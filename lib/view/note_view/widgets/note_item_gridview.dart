import 'package:flutter/material.dart';

import 'note_item.dart';

class NoteItemGridView extends StatelessWidget {
  const NoteItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1.1,
          children: List.generate(8, (index) => const NoteItem())),
    );
  }
}
