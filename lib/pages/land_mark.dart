import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets/reusable/land_mark_page/land_mark_card.dart';
import 'package:myapp/utils/colors.dart';

class LandMark extends StatelessWidget {
  const LandMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Landmarks",style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: mainLandmarksColor,
      ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
               const SizedBox(height: 10,),
                    Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: textColor,
               ),),
                const SizedBox(height: 10,),
              
                const LandMarkCard(title: "Landmarks Place-2", 
                description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.", 
                imageUrl: "Assets/land1.png"),
                const SizedBox(height: 10,),
                const LandMarkCard(title: "Landmarks Place-1", 
                description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.", 
                imageUrl: "Assets/land2.png"),
            ],
          ),
        ),
      ),
    );
  }
}