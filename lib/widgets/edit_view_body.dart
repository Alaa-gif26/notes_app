import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import 'custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children:const [ 
            SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
           SizedBox(height: 32,),
          CustomTextField(
            hint: "Title",
          ),
            SizedBox(height: 16,),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
