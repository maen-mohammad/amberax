import 'package:flutter/material.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_opt/opt_form.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class OptViewBody extends StatelessWidget {
  const OptViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("OTP Verification", style: TextStyle(color: AppColor.kGrey),),
        centerTitle: true,
        
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "OTP Verification ?",
                  style: TextStyle(
                     color: AppColor.kOrang,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                  
                ),
                SizedBox(height: 8,),
                const Text("We sent your code to +1 898 860 ***"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("This code will expired in "),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 30.0, end: 0.0),
                      duration: const Duration(seconds: 30),
                      builder: (_, dynamic value, child) => Text(
                        "00:${value.toInt()}",
                        style: const TextStyle(color: AppColor.kOrang),
                      ),
                    ),
                  ],
                ),
                OtpForm(),
                const SizedBox(height: 20),
                GestureDetector(

                  onTap: () {
                    // OTP code resend
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      
                      "Resend OTP Code",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}