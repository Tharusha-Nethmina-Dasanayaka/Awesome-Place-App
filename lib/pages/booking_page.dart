import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets/booking_page/input_form.dart';
import 'package:myapp/pages/widgets/booking_page/vehicle_card.dart';
import 'package:myapp/shared/rating.dart';
import 'package:myapp/utils/colors.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Lets Book A Tour!",style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: mainColor,
      ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: textColor,
                 ),),
                const SizedBox(height: 10,),
                const Text("Select a vehical",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: mainColor,
                ),),
               const SizedBox(height: 10,),
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   VehicleCard(
                   vehicalName: "Car", 
                   vehicalImage:"Assets/car.png",
                   ),
                   VehicleCard(
                   vehicalName: "Bike", 
                   vehicalImage:"Assets/bike.png",
                   ),
                   VehicleCard(
                   vehicalName: "Bus", 
                   vehicalImage:"Assets/bus.png",
                   ),
                 ],
               ),
                const SizedBox(height: 10,),
                const Text("Selected Place",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: mainColor,
                ),),
               const SizedBox(height: 10,),
               Stack(
                children: [
                  ClipRRect(
                    
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("Assets/Cultural.png",
                    height: 250,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Selected Place",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: mainWhiteColor,
                          ),),
                          Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: mainWhiteColor,
                          ),),
                          SizedBox(height: 20,),
                          Rating(),
                        ],
                      ),
                    )
                ],
               ),
               SizedBox(height: 10,),
               Text("Fill The Details",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: mainColor,
                ),),
                SizedBox(height: 10,),
                InputForm(),
                SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}