import 'package:flutter/material.dart';
import 'package:project_amber/Features/component/custom_surffix.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String? textLabel;
  final String? textHint;
  final String svgIcons;
  final bool bol;
  final TextEditingController controller;
  final Function() onTap;

  final TextInputType type;

  const CustomTextFormField(
      {super.key,
      this.textLabel,
      this.textHint,
      required this.svgIcons,
      required this.onTap,
      required this.type,
      required this.bol,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 248, 246, 247),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        controller: controller,
        textDirection: TextDirection.rtl,
        readOnly: bol,
        cursorColor: AppColor.kGrey,
        keyboardType: type,
        obscureText: false,
        decoration: InputDecoration(
            focusColor: AppColor.kGrey,
            labelText: textLabel,
            hintText: textHint,
            hintTextDirection: TextDirection.rtl,
            // suffixIcon: CustomSurffixIcon(
            //   svgIcon: svgIcons,
            // ),
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            )),
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: AppColor.kGrey,
          fontStyle: FontStyle.normal,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
