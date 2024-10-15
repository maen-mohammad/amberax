import 'package:flutter/material.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_forget_password/forget_password_form.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  Column(
                    children: [
                      Text(
                        "هل نسيت كلمة المرور؟",
                        style: TextStyle(
                          color: AppColor.kOrang,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "الرجاء إدخال بريدك الإلكتروني وسنرسل لك رابطًا للعودة إلى حسابك",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          AppImageAsset.forgetPassword,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.09),
                  ForgotPassForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
