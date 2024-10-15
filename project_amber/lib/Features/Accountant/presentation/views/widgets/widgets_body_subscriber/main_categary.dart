

import 'package:flutter/material.dart';
class MainCategary extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: (20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Main Equipment",
                  style: TextStyle(
                    fontSize: (18),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            //   title: "Special for you",
            //   press: () {},
            // ),
          ),
          SizedBox(height: (20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MainEquipmentCard(
                  image: "assets/images/bookly.png",
                  category: "Equipments",
                  numOfBrands: 18,
                  press: () {
                    
                  },
                ),
                MainEquipmentCard(
                  image: "assets/images/690295c4-07c0-41c7-b24b-7c9c6d8e2c0d.jpeg",
                  category: "UpKeep",
                  numOfBrands: 24,
                  press: () {
                   
                  },
                ),
                SizedBox(width: (20)),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainEquipmentCard extends StatelessWidget {
  const MainEquipmentCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: (20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: (242),
          height: (100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(

                    image,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: (15.0),
                    vertical: (10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: (18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


