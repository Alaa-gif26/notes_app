import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/widgets/Add_note_form.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
        if (state is AddNoteCubitFailure) {
          print("failed${state.errMessage}");
        }
        if (state is AddNoteCubitSucess) {
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteCubitLoading ? true : false,
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      }),
    );
  }
}
