import 'package:flutter/material.dart';
import 'package:project_amber/Features/home/presentation/views/widgets/backgroud_back.dart';
import 'package:project_amber/Features/home/presentation/views/widgets/banner.dart';
import 'package:project_amber/Features/home/presentation/views/widgets/categoreis.dart';
import 'package:project_amber/Features/home/presentation/views/widgets/home_header.dart';
import 'package:project_amber/Features/home/presentation/views/widgets/main_equipment.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 10),
            BannerCard(),
            Categories(),
            SizedBox(height: 10),
            MainEquipment(),
            SizedBox(height: 30),
            BackageCard(
              image: "assets/images/Businesswoman with colleagues in office, looking at birthday cards_.png",
              category: "Employees",
              numOfBrands: 24,
              press: () {},
            ),
            SizedBox(width: (20)),
            BackageCard(
              image: "assets/images/Where to stay in Seville, Spain _ You Could Travel.jpeg",
              category: "Branches",
              numOfBrands: 24,
              press: () {},
            ),
            SizedBox(width: (20)),
            BackageCard(
              image: "assets/images/Free Printable Book Report Form.jpeg",
              category: "Repostries",
              numOfBrands: 24,
              press: () {
                
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ],
        ),
      ),
    ));
  }
  
}