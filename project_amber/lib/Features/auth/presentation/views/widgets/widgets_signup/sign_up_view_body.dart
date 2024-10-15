import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_signup/sign_up_form.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              child: SizedBox(
                width: screenWidth * .85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "إنشىء حسابك بكل يسر والبساطة",
                          style: TextStyle(
                            color: AppColor.kOrang,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        // SizedBox(height: screenHeight * 0.05),
                        // Text(
                        //   "أدخل معلوماتك مثل الأسم والبريدالألكتروني زكلمة السر  ",
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //       color: Colors.grey,
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        Container(
                          width: screenWidth * .9,
                          child: Image.asset(
                            AppImageAsset.login,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                        height: screenHeight * 0.01), // 9% of screen height

                    SignUpForm(),

                    Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                          right: screenHeight * 0.05), // 5% of screen height
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kLoginView);
                        },
                        child: Text(
                          "تسجيل الدخول ",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
