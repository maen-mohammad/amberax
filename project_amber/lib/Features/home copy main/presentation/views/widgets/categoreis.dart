

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "المزودين", "press": () {}, },
      {"icon": "assets/icons/Discover.svg", "text": "المشتركين","press": () {},},
      {"icon": "assets/icons/Bill Icon.svg", "text": "التقارير","press": () {},},
      {"icon": "assets/icons/Gift Icon.svg", "text": "الموظفين","press": () {},},

    ];
    return Padding(
      padding: EdgeInsets.all(15),
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
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: MediaQuery.of(context).size.width*.23,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all((15)),
              height: (55),
              width: (55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),)
          ],
        ),
      ),
    );
  }
}
