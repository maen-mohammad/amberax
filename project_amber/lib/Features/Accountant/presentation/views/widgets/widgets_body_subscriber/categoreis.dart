import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        'icon': "assets/icons/Flash Icon.svg",
        'text': "المشتركين",
        'press': () {
          GoRouter.of(context).push(AppRouter.kListProvidersView);
        },
      },
      {
        "icon": "assets/icons/Discover.svg",
        "text": "الطلبات",
        "press": () {
          GoRouter.of(context).push(AppRouter.kListProvidersView);
        },
      },
      {
        "icon": "assets/icons/Bill Icon.svg",
        "text": "الفواتير",
        "press": () {
          GoRouter.of(context).push(AppRouter.kListProvidersView);
        },
      },
      {
        "icon": "assets/icons/Gift Icon.svg",
        "text": "الشكاوي",
        "press": () {
          GoRouter.of(context).push(AppRouter.kListProvidersView);
        },
      },
      {
        "icon": "assets/icons/Gift Icon.svg",
        "text": "العروض",
        "press": () {
          GoRouter.of(context).push(AppRouter.kListProvidersView);
        },
      },
    ];
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
      
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
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
      onTap: () {
        GoRouter.of(context).push(AppRouter.kListSubscribersView);
      },
      child: Container(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .18,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all((10)),
                height: (50),
                width: (50),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
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
