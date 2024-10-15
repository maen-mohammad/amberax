

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                width: double.infinity,
                child: MaterialButton(
                  
                  onPressed: (){
                    print("page");
                    GoRouter.of(context).push(AppRouter.kLoginView);

                  },
                  child:const Text("Continue",
                  style: TextStyle(
                    color: AppColor.kWhite,
                    fontSize: 15),),
                  color: AppColor.kOrang,
                  ),
              );
  }
}