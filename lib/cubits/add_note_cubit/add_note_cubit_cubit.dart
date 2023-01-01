import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/Note_model.dart';
import 'package:notes_app/constants.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      emit(AddNoteCubitSucess());
      await notesBox.add(note);
    } catch (e) {
      AddNoteCubitFailure(e.toString());
    }
  }
}
