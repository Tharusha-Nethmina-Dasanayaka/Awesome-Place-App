import 'package:flutter/material.dart';
import 'package:myapp/shared/button.dart';
import 'package:myapp/utils/colors.dart';

class InputForm extends StatelessWidget {
  const InputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("User Name",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),),
        const SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 10,),
         const Text("User Country",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),),
        const SizedBox(height: 10,),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your country",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 10,),
               Text("Team Size",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: mainColor,
                      ),
                      child: const Center(
                        child: Text("3",style: TextStyle(
                       fontSize: 35,
                       fontWeight: FontWeight.w500,
                       color: mainWhiteColor,
                       ),
                       ),
                      ),
                    ),                    
                    Column(
                      children: [
                        Text("Add or Remove team members",style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.w500,
                         color: textColor,
                        ),),
                        const Row(
                          children: [
                            Button(
                              buttonText: "Add +",
                              buttonColor: bookTourGreenColor,
                              ),
                              SizedBox(width: 10,),
                              Button(
                              buttonText: "Remove -",
                              buttonColor: bookTourRedColor,
                              ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w500,
                           color: textColor,
                          ),),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Button(
                      buttonText: "Submit", 
                      buttonColor: thirdCategoriColor),
                  ],
                ),
                const SizedBox(width: 20,),
                
      ],
    );
  }
}