import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
    required this.icon
    });
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
     decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.05),
      borderRadius: BorderRadius.circular(16)
     ),
      child: IconButton(onPressed: () {}, icon: icon),
    );
  }
}
