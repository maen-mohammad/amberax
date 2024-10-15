import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_splash/sliding_text.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation<Offset> slindingAnmation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      // Get.to(() => HomeView(),
      //     transition: Transition.fade, duration: kTranstionDuration);
      GoRouter.of(context).push(AppRouter.kOnBording);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kOrang,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.kWhite, width: 8),
                borderRadius: BorderRadius.circular(25)),
            child: Text("Amber",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kWhite)),
          )),
          const SizedBox(
            height: 4,
          ),
          SlidingText(slindingAnmation: slindingAnmation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    slindingAnmation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationcontroller);

    animationcontroller.forward();
  }
}
