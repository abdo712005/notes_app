import 'package:flutter/material.dart';
import 'package:note_app/components/Edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id ="editnoteview";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),

    );
  }
}