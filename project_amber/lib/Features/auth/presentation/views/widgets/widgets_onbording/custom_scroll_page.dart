import 'package:flutter/material.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_onbording/on_bording_list.dart';

import 'package:project_amber/core/utlites/app_color.dart';





class CustomScrollPage extends StatelessWidget {
  const CustomScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBordingList.length,
              (index) => AnimatedContainer(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 5),
                    duration: Duration(milliseconds: 900),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: AppColor.kOrang,
                        borderRadius: BorderRadius.circular(50)),
                  ))
        ],
      ),
    );
  }
}
