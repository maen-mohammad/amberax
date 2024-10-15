
import 'package:flutter/material.dart';

import '../../../../../core/utlites/app_color.dart';

class InformationSubsciber extends StatelessWidget {
  InformationSubsciber({super.key, required this.user});
  var user;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            user.clientName,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            textAlign: TextAlign.right,
            user.address,
            style: TextStyle(
              fontSize: 12,
              color: AppColor.kOrang,
            ),
          ),
        ),
        // Text(
        //   textAlign: TextAlign.right,
        //   "شارع الوحدة - بناء رجب",
        //   // "ريف دمشق -  داريا -شارع الوحدة - بناء رجب",hg
        //   style: TextStyle(
        //     fontSize: 12,
        //     color: AppColor.kOrang,
        //   ),
        // ),
      ],
    );
  }
}
