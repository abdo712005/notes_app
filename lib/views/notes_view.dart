import 'package:flutter/material.dart';
import 'package:note_app/components/Add_note_button_sheet.dart';
import 'package:note_app/components/Notes_view_body.dart';

class NotesView extends StatelessWidget {
  static String id = "Notesview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
             builder: (context){
            
            return AddNoteButtonSheet();
          },);
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: NotesViewbody(),
    );
  }
}
