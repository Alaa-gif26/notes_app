import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/Note_model.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List <NoteModel> notes= BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: ,
            padding: EdgeInsets.zero,
            itemBuilder: ((context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: NotesItem(),
              );
            }),
          ),
        );
      },
    );
  }
}
