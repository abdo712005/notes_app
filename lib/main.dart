// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/Edit_Note_view.dart';
import 'package:note_app/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
 Hive.registerAdapter(NoteModelAdapter());
  runApp( Notesapp());
}

class Notesapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      routes: {
        NotesView.id : (context)=> NotesView(),
        EditNoteView.id : (context)=> EditNoteView(),

      },
        initialRoute:NotesView.id,
    );
  }
  

}