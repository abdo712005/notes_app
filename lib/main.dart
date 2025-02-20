// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
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

      },
        initialRoute:NotesView.id,
    );
  }
  

}