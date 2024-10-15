import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_onbording/custom_scroll_page.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_onbording/slider-onbording.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              color: Colors.white,
              child: Column(
                
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                        Expanded(
              flex: 5,
              child: const SliderOnBording(),
                        ),
                        Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomScrollPage(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    
                    child: DefaultButton(
                      text: "التالي",
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kLoginView);
                      },
                    ),
                  ),
                ],
              ),
                        ),
                      ]),
            )));
  }
}
