import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
import 'sign_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: SizedBox(
            width: double.infinity,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(12),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "مرحبًا بك في تطبيق Amber",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: AppColor.kOrang,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "يمكنك تسجيل الدخول عن طريق البريد الإلكتروني و كلمة المرور ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            AppImageAsset.login,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: screenHeight * 0.10), // Adjusted the space
                    const SignForm(),
                    //  SizedBox(height: screenHeight * 0.10),
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

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
        padding: EdgeInsets.all(screenWidth * 0.03),
        height: screenWidth * 0.1,
        width: screenWidth * 0.1,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}
