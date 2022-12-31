import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: ((value) {
              title = value;
            }),
            hint: "Title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: ((value) {
              subtitle = value;
            }),
            hint: "Content",
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          CustomButon(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
            text: "Add",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
