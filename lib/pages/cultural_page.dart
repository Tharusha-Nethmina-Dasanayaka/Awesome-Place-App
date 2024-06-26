import 'package:flutter/material.dart';
import 'package:myapp/shared/button.dart';
import 'package:myapp/shared/input.dart';
import 'package:myapp/shared/rating.dart';
import 'package:myapp/utils/colors.dart';

class CulturalPage  extends StatelessWidget {
  const CulturalPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Cultural",style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: mainCulturalColor,
      ),),
      ),
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              children: [
                        Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                   ),),
                    const SizedBox(height: 10,),
           ClipRRect(
            borderRadius: BorderRadius.circular(18),
             child: Image.asset("Assets/Cultural.png",
                       width: double.infinity,
                       fit: BoxFit.cover,
                       ),
                   ),
                   const SizedBox(height: 10,),
                   Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                   ),
                   textAlign: TextAlign.center,
                   ),

                   const SizedBox(height: 10,),
                   const Text("Rate this Place",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: mainNightlifeColor,
                    ),),

                  const SizedBox(height: 10,),
                  const Rating(),

                  const SizedBox(height: 20,),
                   Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                   ),
                   textAlign: TextAlign.center,
                   ),
                   const SizedBox(height: 10,),
                   const Text("Send Feedback",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: mainNightlifeColor,
                    ),),
                    const SizedBox(height: 10,),
                    const Input(),
                    const SizedBox(height: 10,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                        Button(
                          buttonText: "Submit",
                          buttonColor: thirdCategoriColor,
                        ),
                      ],
                    ),
                     const SizedBox(height: 10,),
                       
  
              ],
            ),
        ),
        ),
      );
  }
}