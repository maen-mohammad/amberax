
import 'package:flutter/material.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
// import 'package:project_amber/core/utlites/app_color.dart';

class InfoSubscriberView extends StatelessWidget {
  // final today = DateTime.now();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "معلومات المشترك",
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
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.05,
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: AppColor.kOrang,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            alignment: Alignment.topRight,
                            child: Text(
                              "أسم المشترك : أسامة رجب",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.kWhite),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: AppColor.kOrang,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            alignment: Alignment.topRight,
                            child: Text(
                              "رقم المشترك : 1245",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.kWhite),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: AppColor.kOrang,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            alignment: Alignment.topRight,
                            child: Text(
                              "رقم الصندوق  :7",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.kWhite),
                            )),Container(
                                  padding: EdgeInsets.symmetric(horizontal: 22,),
                                  margin: EdgeInsets.only(top: 20),
                                  alignment: Alignment.topRight,
                                  
                                  child: Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    "عنوان المشترك : ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: AppColor.kOrang,
                                    ),
                                  )),
                        Container(
                                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                                  alignment: Alignment.topRight,
                                  
                                  child: Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    " ريف دمشق - داريا - شارع الوحدة - بناء رجب",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.kOrang,
                                    ),
                                  )),
                        
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      AppImageAsset.Invices,
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
