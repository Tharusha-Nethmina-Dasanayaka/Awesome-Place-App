import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets/reusable/natural_wonder_cards/natural_wonder_image_card.dart';
import 'package:myapp/utils/colors.dart';

class NaturalWonderPage extends StatelessWidget {
  const NaturalWonderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Natural Wonders",style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: mainNaturalWonderColor,
      ),),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              NaturalWonderImageCard(
                title: "Nature Wonders Place-1",
                imageUrl: "Assets/natural1.png",
                description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              SizedBox(height: 10,),
              NaturalWonderImageCard(
                title: "Nature Wonders Place-2",
                imageUrl: "Assets/natural2.png",
                description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              SizedBox(height: 10,),
              NaturalWonderImageCard(
                title: "Nature Wonders Place-3",
                imageUrl: "Assets/natural3.png",
                description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}