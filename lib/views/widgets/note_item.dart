import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            title: const Text(
              "Flutter tips",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.delete,
                size: 24,
              ),
              onPressed: () {},
            ),
            subtitle:const  Padding(
              padding:  EdgeInsets.only(top: 15),
              child:  Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                "Build your career with khaled ahemd ",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              "May 12,2023",
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}