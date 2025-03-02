import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnote( NoteModel note) async{
    emit(AddNoteloding());

   try {
  var notesbox= Hive.box(kNotesBox);
  await notesbox.add(note);
  emit(AddNoteSuccess());
}  catch (e) {
  AddNoteFaliure(errormessage: e.toString());
}



  }

}