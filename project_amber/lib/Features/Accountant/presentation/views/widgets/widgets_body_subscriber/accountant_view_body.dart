import 'package:flutter/material.dart';
import 'package:project_amber/Features/Accountant/presentation/views/widgets/widgets_body_subscriber/backgroud_back.dart';
import 'package:project_amber/Features/Accountant/presentation/views/widgets/widgets_body_subscriber/banner.dart';
import 'package:project_amber/Features/Accountant/presentation/views/widgets/widgets_body_subscriber/categoreis.dart';
import 'package:project_amber/Features/Accountant/presentation/views/widgets/widgets_body_subscriber/accountant_header.dart';


class AccountantViewBody extends StatelessWidget {
  const AccountantViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            SubscriberHeader(),
            SizedBox(height: 10),
            BannerCard(),
            Categories(),
            
            SizedBox(width: (20)),
            BackageCard(
              image: "assets/images/Free Printable Book Report Form.jpeg",
              category: "التقارير",
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