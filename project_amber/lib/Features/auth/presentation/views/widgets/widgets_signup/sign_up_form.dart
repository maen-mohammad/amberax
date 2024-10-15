import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/Features/component/text_form_field.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            textLabel: "الاسم",
            textHint: 'أدخل الاسم',
            svgIcons: "assets/icons/User.svg",
            controller: TextEditingController(),
            type: TextInputType.text,
          ),
          SizedBox(height: screenHeight * 0.01), // 3% of screen height

          CustomTextFormField(
            textLabel: "البريد الإلكتروني",
            textHint: 'أدخل البريد الإلكتروني',
            svgIcons: "assets/icons/Mail.svg",
            controller: TextEditingController(),
            type: TextInputType.emailAddress,
          ),
          SizedBox(height: screenHeight * 0.01), // 3% of screen height

          CustomTextFormField(
            textLabel: "كلمة المرور",
            textHint: 'أدخل كلمة المرور',
            svgIcons: "assets/icons/Lock.svg",
            controller: TextEditingController(),
            type: TextInputType.visiblePassword,
          ),
          SizedBox(height: screenHeight * 0.01), // 3% of screen height

          CustomTextFormField(
            textLabel: "تأكيد كلمة المرور",
            textHint: 'أدخل كلمة المرور مرة أخرى',
            svgIcons: "assets/icons/Lock.svg",
            controller: TextEditingController(),
            type: TextInputType.visiblePassword,
          ),
          SizedBox(height: screenHeight * 0.01), // 2% of screen height

          DefaultButton(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kLoginView);
            },
            text: "تسجيل",
          ),
          SizedBox(height: screenHeight * 0.01), // 1% of screen height

          
        ],
      ),
    );
  }
}
