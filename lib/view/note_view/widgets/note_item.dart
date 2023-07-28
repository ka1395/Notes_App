import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import '../../edite_note_view/edite_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditeNoteView(),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        padding: const EdgeInsets.only(bottom: 20, left: 15),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.15),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 18,
              title: Text(
                note.title,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.delete,
                  size: 24,
                ),
                onPressed: () {
                  note.delete();
                },
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  note.contnt,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                note.date,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
