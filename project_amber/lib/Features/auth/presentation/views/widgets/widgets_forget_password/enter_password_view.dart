import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/Features/component/text_form_field.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class EnterPasswordViewBody extends StatelessWidget {
  const EnterPasswordViewBody({Key? key});

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
                        "الرجاء أدخال كلمة السر الجديدة وتأكيدها",
                        style: TextStyle(
                          color: AppColor.kOrang,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
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
                  Form(
      child: Column(
        children: [
          CustomTextFormField(
            textLabel: " ",
            textHint: "أدخل كلمة السرالجديدة ",
            svgIcons: "assets/icons/Lock.svg",
            controller: TextEditingController(),
            type: TextInputType.emailAddress,
          ),
          SizedBox(height: screenHeight * 0.03), // 25% of screen height
          CustomTextFormField(
            textLabel: " ",
            textHint: "  تأكيد كلمة السر الجديدة",
            svgIcons: "assets/icons/Lock.svg",
            controller: TextEditingController(),
            type: TextInputType.emailAddress,
          ),
          SizedBox(height: screenHeight * 0.03), // 25% of screen height
          DefaultButton(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kLoginView);
            },
            text: "متابعة",
          ),
          
        ],
      ),
    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
