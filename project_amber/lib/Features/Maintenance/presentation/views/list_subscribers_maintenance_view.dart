import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ListSubscribersMaintenanceView extends StatelessWidget {
  const ListSubscribersMaintenanceView({super.key});
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: 
                        Container(
                          alignment: Alignment.bottomRight,
                          width: MediaQuery.of(context).size.width*.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 204, 199, 199)
                          ),
                          child: TextField(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                            onChanged: (value) => print(value),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 9),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "البحث عن مشتر ك : أسامة رجب",
                                suffixIcon: Icon(Icons.search)),
                          ),
                        ),
                      
                    
                  ),
                  for (int i = 0; i < 10; i++)
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kInfoSubscriberView);
                      },
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
                              width: 135,
                              height: 135,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  "assets/images/logo.png",
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*.55,
                              child: Column(
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
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  LastLine()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
