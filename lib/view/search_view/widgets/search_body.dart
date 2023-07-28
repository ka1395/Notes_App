import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/search_cubite/search_cubit.dart';
import '../../../help_widgets/custom_text_field.dart';

import 'custom_appbar_search.dart';
import 'note_item_list_view.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const CustomAppBarSearch(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: CustomTextField(
              onChanged: (value) {
                BlocProvider.of<SearchCubit>(context).feachSearchData(value);
              },
              hint: "",
              suffIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          const Expanded(child: NoteItemListView()),
        ],
      ),
    );
  }
}
