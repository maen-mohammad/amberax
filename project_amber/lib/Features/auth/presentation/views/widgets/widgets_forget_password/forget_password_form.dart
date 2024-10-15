import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_forget_password/no_account_text.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/Features/component/text_form_field.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ForgotPassForm extends StatelessWidget {
  const ForgotPassForm({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            textLabel: "البريد الإلكتروني",
            textHint: "أدخل البريد الإلكتروني",
            svgIcons: "assets/icons/Mail.svg",
            controller: TextEditingController(),
            type: TextInputType.emailAddress,
          ),
          SizedBox(height: screenHeight * 0.03), // 25% of screen height
          DefaultButton(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kEnterPasswordViewBody);
            },
            text: "متابعة",
          ),
          SizedBox(height: 10),
          const NoAccountText(),
        ],
      ),
    );
  }
}
