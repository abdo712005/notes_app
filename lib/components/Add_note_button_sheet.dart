import 'package:flutter/material.dart';
import 'package:note_app/components/Custom_button.dart';
import 'package:note_app/components/Custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey <FormState> formkey= GlobalKey();
  AutovalidateMode autovalidate=AutovalidateMode.disabled;
  String ? title ,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            title: "title",
            onSaved: (value) 
            {
              title=value;
              
            },
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            title: "content",
            onSaved: (value) {
              subtitle=value;
              
            },
            maxlins: 5,
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                
              }else{
                autovalidate=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
      
        ],
      ),
    );
  }
}
