import 'package:flutter/material.dart';
import 'package:myapp/pages/natural_wonder_page.dart';
import 'package:myapp/pages/widgets/reusable/home_page/category_card.dart';
import 'package:myapp/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Awesome",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: textColor,
                        ),),
                        const Text("Places",style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: mainColor,
                        ),),
                      ],
                    ),
                    Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: mainColor
                  ),
                ),
                  ],
                ),
                const SizedBox(height: 10,),
                Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: textColor,
                        ),),
                const SizedBox(height: 10,),
                Image.asset("Assets/main.png",
                width: double.infinity,
                fit: BoxFit.cover,
                ),
                const SizedBox(height: 10,),
                const Text("Select a Place from the categories",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: mainColor,
                ),),
               const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:  (context)=> const NaturalWonderPage()),
                        );
                      },
                      child: const CategoryCard(
                        categoryBgColor: firstCategoriColor, 
                        cardWidth: 180, 
                        categoryTitle:"Natural Wonders",
                        ),
                    ),
                      const CategoryCard(
                      categoryBgColor: firstCategoriColor, 
                      cardWidth: 180, 
                      categoryTitle:"Nightlife",
                      ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryCard(
                      categoryBgColor: secondCategoriColor, 
                      cardWidth: 180, 
                      categoryTitle:"Landmarks",
                      ),
                      CategoryCard(
                      categoryBgColor: secondCategoriColor, 
                      cardWidth: 180, 
                      categoryTitle:"Cultural",
                      ),
                  ],
                ),
                const SizedBox(height: 10,),
                const CategoryCard(
                      categoryBgColor: thirdCategoriColor, 
                      cardWidth: double.infinity, 
                      categoryTitle:"Book For A Ride Today!",
                      ),
                      const SizedBox(height: 20,),
              ],
            ),
          ) ,
          ),
      )
    );
  }
}