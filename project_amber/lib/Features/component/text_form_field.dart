

import 'package:flutter/material.dart';
import 'package:project_amber/Features/component/custom_surffix.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String? textLabel;
  final String? textHint;
  final String svgIcons;
  final TextEditingController controller;
  final TextInputType type;

  const CustomTextFormField(
      {super.key,
      this.textLabel,
      this.textHint,
      required this.svgIcons,
      required this.type, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        cursorColor: AppColor.kGrey,
        keyboardType: type,
        obscureText: false,
        controller: controller,
        decoration: InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.start,
            focusColor: AppColor.kGrey,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: AppColor.kOrang, width: 2),
              gapPadding: 10,
            ),
            alignLabelWithHint: true,          
            hintText: textHint,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: CustomSurffixIcon(
              svgIcon: svgIcons,
            ),
            contentPadding:
                EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 30),
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 12, color: Colors.grey)),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
