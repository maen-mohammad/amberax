import 'package:flutter/material.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class LastLine extends StatelessWidget {
  const LastLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 20,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
          );
  }
}