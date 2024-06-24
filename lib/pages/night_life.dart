import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets/reusable/image_card.dart';
import 'package:myapp/utils/colors.dart';

class NightLife extends StatelessWidget {
  const NightLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Nightlife",style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: mainNightlifeColor,
      ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
               const SizedBox(height: 10,),
                  Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textColor,
             ),),
              const SizedBox(height: 10,),
               ImageCard(
                title: "Nature Wonders Place-2",
                imageUrl: "Assets/night1.png",
                description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isConerRounded: true,
                titleColor: titleNightlifeColor,
              ),
               const SizedBox(height: 10,),
               ImageCard(
                title: "Nature Wonders Place-3",
                imageUrl: "Assets/night2.png",
                description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isConerRounded: true,
                titleColor: titleNightlifeColor,
              ),
               const SizedBox(height: 10,),
            ],
          ),
        ),)
      
    );
  }
}