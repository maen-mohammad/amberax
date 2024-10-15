import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/text_form.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class BannerCard extends StatelessWidget {
  final String nameProviders = "الشركة الأمان";
  static const adsProviders =
      "عزيزة المشترك كشركة الضياء تتمنى  لكم كل راحة والسعادة";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        // height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(25),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),

        decoration: BoxDecoration(
          color: AppColor.kOrang,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(
          textAlign: TextAlign.right,
          TextSpan(
            text: '${nameProviders}\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "\n ${adsProviders}",
                style: TextStyle(
                  fontSize: (15),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
