import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_opt/opt_container_number.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});


  final int i=1;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8 ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
               OptConatinerNumber(),
               OptConatinerNumber(),
               OptConatinerNumber(),
               OptConatinerNumber(),
               OptConatinerNumber(),
               
                
               
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          DefaultButton(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kLoginView);
          // onclickregister();
        },
        text: "Continue",
      ),
        ],
      ),
    );
  }
}


