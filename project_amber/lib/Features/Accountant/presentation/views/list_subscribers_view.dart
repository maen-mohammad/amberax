import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ListSubscribersView extends StatelessWidget {
  const ListSubscribersView({super.key});
  final String imgHouse = "assets/images/logo.png";
  final String imgPlace = "assets/images/drivethru.png";
  final int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المشتركين",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              
            color: AppColor.kOrang,
              borderRadius: BorderRadius.circular(20)),
            child: IconButton(onPressed: (){
              GoRouter.of(context).push(
                                              AppRouter.kAddSubscriber);
            }, icon: Icon(Icons.add,color: AppColor.kWhite,size: 20,)))
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 10; i++)
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  isActive != 0 ? imgHouse : imgPlace,
                                  height: 85,
                                  width: 85,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "أسامة رجب",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  textAlign: TextAlign.right,
                                  "ريف دمشق -  داريا ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColor.kOrang,
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.right,
                                  "شارع الوحدة - بناء رجب",
                                  // "ريف دمشق -  داريا -شارع الوحدة - بناء رجب",hg
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColor.kOrang,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 70),
                              child: PopupMenuButton(
                                padding: EdgeInsets.all(5),
                                icon: Icon(
                                  Icons.settings,
                                  size: 30,
                                  color: AppColor.kOrang,
                                ),
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                      value: 1,
                                      child: TextButton(
                                        onPressed: () {
                                          GoRouter.of(context).push(
                                              AppRouter.kSubscriberDetails);
                                        },
                                        child: Text("تعديل"),
                                      )),
                                  PopupMenuItem(value: 2, child: TextButton(
                                        onPressed: () {
                                          GoRouter.of(context).push(
                                              AppRouter.kSubscriberDetails);
                                        },
                                        child: Text("حذف"),
                                      )),
                                  PopupMenuItem(value: 3, child: TextButton(
                                        onPressed: () {
                                          GoRouter.of(context).push(
                                              AppRouter.kSubscriberDetails);
                                        },
                                        child: Text("تقييد"),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),

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
