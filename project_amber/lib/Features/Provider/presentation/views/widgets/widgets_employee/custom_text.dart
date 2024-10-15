import 'package:flutter/material.dart';

import '../../../../../../core/utlites/app_color.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
          color: AppColor.kOrang, borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: TextStyle(
            color: AppColor.kWhite, fontSize: 18, fontWeight: FontWeight.w700),
      ),
    );
  }
}
