import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, 
  required this.title, 
   this.maxlins
  });
  final String title;
  final int? maxlins;

  @override
  Widget build(BuildContext context) {
    return TextField(
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