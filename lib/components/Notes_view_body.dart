import 'package:flutter/material.dart';
import 'package:note_app/components/Custom_search_icon.dart';
import 'package:note_app/components/Notes_listview.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Text(
                  "Notes",
                  style: TextStyle(fontSize: 24),
                ),
                Spacer(),
                CustomSearchIcon(),
              ],
            ),
          ),
           
          Expanded( 
            child: Noteslistview(),
              
            
          ),
        ],
      ),
    );
  }
}
