import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Enter a text",
        hintStyle: TextStyle(
          color: textColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      ),
    );
  }
}