import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class LandMarkCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const LandMarkCard({super.key, 
  required this.title, 
  required this.description, 
  required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: titleLandmarksColor,
                    ),),
          ),
         const SizedBox(height: 10,),
        
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
        ),
        
         const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description,style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: textColor,
          ),),
        ),

        ],
      ),
    );
  }
}