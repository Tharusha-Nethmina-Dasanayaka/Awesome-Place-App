import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class VehicleCard extends StatelessWidget {
  final String vehicalName;
  final String vehicalImage;
   const VehicleCard({super.key, 
   required this.vehicalName, 
   required this.vehicalImage,
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(vehicalImage),
          Text(vehicalName,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: maintitleColor
          ),),
        ],
      ),
    );
  }
}