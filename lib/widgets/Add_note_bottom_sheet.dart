import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/widgets/Add_note_form.dart';


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
          child: Padding(
            padding: EdgeInsets.only(left: 16.0,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
            child:const SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      }),
    );
  }
}
