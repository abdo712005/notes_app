import 'package:flutter/material.dart';
import 'package:note_app/components/Notes_view_body.dart';

class NotesView extends StatelessWidget {
  static String id = "Notesview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewbody(),
    );
  }
}

