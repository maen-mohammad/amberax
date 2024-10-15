import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ListProvidersViewBody extends StatelessWidget {
  const ListProvidersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "شركات مزودين الخدمة",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.kOrang,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      cursorColor: AppColor.kWhite,
                      style: TextStyle(
                          color: AppColor.kWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          iconColor: const Color.fromARGB(255, 245, 233, 233),
                          fillColor: AppColor.kWhite,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            color: AppColor.kWhite,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
                    ),
                  ),

                  for (int i = 0; i < 10; i++)
                    InkWell(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kProvidersDetailsView);
                      },
                      child: Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textDirection: TextDirection.rtl,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              textDirection: TextDirection.rtl,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    AppImageAsset.logo,
                                    height: 85,
                                    width: 85,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(right: 20)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "شركة الأمان",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      textAlign: TextAlign.right,
                                      "دمشق : داريا",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(right: 20)),
                              ],
                            ),
                            Container(
                              child: Icon(
                                Icons.cabin_outlined,
                                color: AppColor.kOrang,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  LastLine(),
                  //Expanded(child: child),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
