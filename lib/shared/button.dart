import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const Button({super.key, 
  required this.buttonText,
  required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
      ),
      child:  Text(buttonText,style: const TextStyle(
        fontSize: 16,
        color: mainBlackColor,
      ),),

    );
  }
}