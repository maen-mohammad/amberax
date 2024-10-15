import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class CollectionHeader extends StatelessWidget {
  const CollectionHeader({
    Key? key,
  }) : super(key: key);
  final numOfitem = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              color: AppColor.kWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              textAlign: TextAlign.center,
              readOnly: true,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "الجابي : خالد السعيد",
                  hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),
                   suffixIcon: IconButton(
                    icon: Icon(Icons.archive,color: AppColor.kOrang,),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kDetailsCollection);
                    },
                   )
                   )
            ),
          ),
          InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kNotficaionsCollectionViewBody);
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    
                    color: AppColor.kWhite,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset("assets/icons/Bell.svg"),
                ),
                if (numOfitem != 0)
                  Positioned(
                    top: -1,
                    right: 0,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color:AppColor.kOrang,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          "$numOfitem",
                          style: TextStyle(
                            fontSize: 10,
                            height: 1,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
