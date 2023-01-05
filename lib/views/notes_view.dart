import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/Add_note_bottom_sheet.dart';
import '../widgets/Notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:  FloatingActionButton(onPressed: (() {
        showModalBottomSheet(
          isScrollControlled: true,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(16),
         ),
                      context: context,
                      builder: (context) {
                        return AddNoteBottomSheet();
                      });
      }),child: const Icon(Icons.add),),
      body:const NotesViewBody(),

 
    );
  }
}
