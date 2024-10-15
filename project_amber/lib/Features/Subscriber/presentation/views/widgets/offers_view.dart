import 'package:flutter/material.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "عروض الشركة ",
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
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.05,
                  // ),

                  for (int i = 0; i < 10; i++)
                   InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 241, 241),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColor.kOrang,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "الأمتحانات",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.italic,
                                        color: AppColor.kWhite),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  alignment: Alignment.topRight,
                                  child: Text("سعر الكيلو الواط الواحد : 9000"),
                                  
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  alignment: Alignment.topRight,
                                  child: Text("باقي 5 أيا لانتهاء العرض الحالي")
                                ),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  LastLine(),
                  
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
