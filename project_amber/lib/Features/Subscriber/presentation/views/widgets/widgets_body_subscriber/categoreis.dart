import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        'icon': "assets/icons/Flash Icon.svg",
        'text': "المزودين",
        "press": () {
          GoRouter.of(context).push(AppRouter.kListProvidersView);
        },
      },
      {
        "icon": "assets/icons/Discover.svg",
        "text": "شكاوي",
        "press": () {
          GoRouter.of(context).push(AppRouter.kListComplaintsViewBody);
        },
      },
      {
        "icon": "assets/icons/Bill Icon.svg",
        "text": "الفواتير",
        "press": () {
          GoRouter.of(context).push(AppRouter.kInvoicesView);
        },
      },
      {
        "icon": "assets/icons/Gift Icon.svg",
        "text": "العروض",
        "press": () {
          GoRouter.of(context).push(AppRouter.kOffersView);
        },
      },
      // {
      //   "icon": "assets/icons/Gift Icon.svg",
      //   "text": "العروض",
      //   "press": () {
      //     GoRouter.of(context).push(AppRouter.kListProvidersView);
      //   },
      // },
    ];
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: categories[index]["press"],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .18,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all((13)),
                height: (55),
                width: (55),
                decoration: BoxDecoration(
                  // color: Color(0xFFFFECDF),
                  color: AppColor.kOrang,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon!),
              ),
              SizedBox(height: 5),
              Text(
                text!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
