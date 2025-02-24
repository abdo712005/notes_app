import 'package:flutter/material.dart';
import 'package:note_app/components/Custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            title: "title",
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            title: "content",
            maxlins: 5,
          ),
      
        ],
      ),
    );
  }
}
