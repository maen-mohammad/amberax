



import 'package:flutter/material.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class BackageCard extends StatelessWidget {
  const BackageCard({
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
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
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
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.01,
                        MediaQuery.of(context).size.height * 0.01,
                        MediaQuery.of(context).size.width * 0.01,
                        MediaQuery.of(context).size.height * 0.01),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                              color: AppColor.kOrang,
                              fontSize: (40),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // TextSpan(text: "$numOfBrands Brands")
                        ],
                      ),
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
