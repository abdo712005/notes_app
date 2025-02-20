import 'package:flutter/material.dart';
import 'package:note_app/components/Custom_note_item.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return CustomNoteItem();
    });
  }
}
