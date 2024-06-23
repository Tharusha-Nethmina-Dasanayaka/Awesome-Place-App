import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  final Color categoryBgColor;
  final double cardWidth;
  final String categoryTitle;
  const CategoryCard({super.key, 
  required this.categoryBgColor, 
  required this.cardWidth, 
  required this.categoryTitle
  });
final double cardHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: categoryBgColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(categoryTitle,style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: mainBlackColor,
        ),),
      ),

    );
  }
}