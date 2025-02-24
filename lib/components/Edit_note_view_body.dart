import 'package:flutter/material.dart';
import 'package:note_app/components/Custom_search_icon.dart';
import 'package:note_app/components/Custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
                  "Edit Note",
                  style: TextStyle(fontSize: 24),
                ),
                Spacer(),
                CustomSearchIcon(
                  icon: Icon(Icons.check),
                ),
                
              ],
            ),

          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(title: "title",
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(title:"content",
          maxlins: 5,
           ),

           
         
        ],
      ),
    );
  }
}