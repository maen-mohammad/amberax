import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/auth/presentation/view_models/auth/auth_cubit.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/Features/component/text_form_field.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class SignForm extends StatelessWidget {
  const SignForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Form(
      child: SizedBox(
        width: screenWidth * .85,
        child: Column(
          children: [
            CustomTextFormField(
              textLabel: "البريد الإلكتروني",
              textHint: "أدخل البريد الإلكتروني",
              svgIcons: "assets/icons/Mail.svg",
              controller: emailController,
              type: TextInputType.emailAddress,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CustomTextFormField(
              textLabel: "كلمة المرور",
              textHint: 'أدخل كلمة المرور',
              svgIcons: "assets/icons/Lock.svg",
              controller: passwordController,
              type: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kForgetPasswordView);
                      },
                      child: Text(
                        "نسيت كلمة المرور",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(left: screenWidth * 0.1),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.ksignUpView);
                      },
                      child: Text(
                        "إنشاء حساب",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            DefaultButton(
              onTap: () {
               
                BlocProvider.of<AuthCubit>(context).login(
                  emailController.text,
                  passwordController.text,
                );
                GoRouter.of(context).push(AppRouter.kMove);
              },
              text: "تسجيل الدخول",
            ),
          ],
        ),
      ),
    );
  }
}
