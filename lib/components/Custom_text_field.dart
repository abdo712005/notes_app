import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, 
  required this.title, 
   this.maxlins, this.onSaved
  });
  final String title;
  final int? maxlins;
  final  Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required !!";
          
        }else{
          return null;
        }
      },
      maxLines: maxlins,

      decoration: InputDecoration(
       
       
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(

          ),
        ),
        hintText: title,
      ),
      
    );
  }
}