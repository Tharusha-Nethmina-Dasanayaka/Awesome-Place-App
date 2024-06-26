import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: ratingColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.star,color: Colors.yellow,),
          const Icon(Icons.star,color: Colors.yellow,),
          const Icon(Icons.star,color: Colors.yellow,),
          const Icon(Icons.star,color: Colors.yellow,),
           Icon(Icons.star,color:textColor ,),
        ],
      ),
    );
  }
}