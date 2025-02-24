import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.blue
     ),
      child: Text("Add",
      style: TextStyle(
         fontSize: 18,
         fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}