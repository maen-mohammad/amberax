import 'package:flutter/material.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/banner.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/categoreis.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/last_sections.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/subscriber_header.dart';


class SubscriberViewBody extends StatelessWidget {
  const SubscriberViewBody({super.key});

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
            SizedBox(height: 10),
            LastSections(),
            SizedBox(height: 30),
            
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ],
        ),
      ),
    ));
  }
  
}