import 'package:flutter/material.dart';
import 'package:notes_app/help_widgets/custom_appbar.dart';
import 'package:notes_app/help_widgets/custom_text_field.dart';

import 'widgets/custom_appBar_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 60,
          ),
          CustomAppBarSearch(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: CustomTextField(
              hint: "",
              suffIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
