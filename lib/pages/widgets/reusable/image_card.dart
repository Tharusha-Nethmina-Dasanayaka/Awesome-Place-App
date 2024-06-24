import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool isConerRounded;
  final Color titleColor;


  const ImageCard({super.key, 
  required this.title, 
  required this.description, 
  required this.imageUrl, 
  required this.isConerRounded, 
  required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: titleColor,
        ),),
        const SizedBox(height: 10,),
        isConerRounded ? 
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
        )
        :Image.asset(imageUrl,
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