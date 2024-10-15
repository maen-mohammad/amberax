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
        'text': "المشتركين",
        'press': () {
          GoRouter.of(context).push(AppRouter.kListSubscribersMaintenanceView);
        },
      },
      {
        "icon": "assets/icons/Discover.svg",
        "text": "الطلبات",
        "press": () {
          GoRouter.of(context).push(AppRouter.kOrdersSubsrcibeView);
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
          width: MediaQuery.of(context).size.width * .40,
          child: Container(
            padding: EdgeInsets.all((10)),
                  height: (60),
                  width: (60),
                  decoration: BoxDecoration(
                    color: AppColor.kOrang,
                    borderRadius: BorderRadius.circular(10),
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 
                  child: SvgPicture.asset(icon!,width: 50,),
                ),
                SizedBox(width: 5),
                Text(
                  text!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,color: AppColor.kWhite),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
