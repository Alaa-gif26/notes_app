

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Notes_List_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 50,),
        CustomAppBar(),
        Expanded(child: NotesListView()),

      ],
    );
  }
}
