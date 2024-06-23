import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class NaturalWonderImageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const NaturalWonderImageCard({super.key, 
  required this.title, 
  required this.description, 
  required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: titleNaturalWonderColor,
        ),),
        const SizedBox(height: 10,),
        Image.asset(imageUrl,
        width: double.infinity,
        fit: BoxFit.cover,
        ),
        const SizedBox(height: 10,),
        Text(description,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),),
      ],
    );
  }
}