import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
// import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class InvoicesSubscriberView extends StatelessWidget {
  // final today = DateTime.now();
  final day = 23;
  final month = 7;
  final year = 2024;

  final isActive = 0;
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الفواتير",
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
                  for (int i = 20; i != 0; i--)
                    InkWell(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kProvidersDetailsView);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 234, 243, 248),
                              borderRadius: BorderRadius.circular(20)),
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
                                  "رقم الفاتورة : 22",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                      color: AppColor.kWhite),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 10, top: 10),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "التاريخ : ${day} - ${month} - ${year}",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),
                              Divider(
                                thickness: 1,
                                color: AppColor.kGrey,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          textAlign: TextAlign.right,
                                          textDirection: TextDirection.rtl,
                                          "الأستهلاك",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "10",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          textAlign: TextAlign.right,
                                          textDirection: TextDirection.rtl,
                                          "الفاتورة الجديدة",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "210",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Text(
                                          textAlign: TextAlign.right,
                                          textDirection: TextDirection.rtl,
                                          "الفاتورة القديمة",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "200",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: AppColor.kGrey,
                              ),

                              Row(
                                textDirection: TextDirection.rtl,
                                
                                children: [
                                  Container(
                                      padding:
                                          EdgeInsets.only(right: 10, top: 10),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        "صورة قيمة العداد :",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                height: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColor.kOrang,
                                        width: 3,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(child: Text('No Image Selected')),
                              ),

                              // Divider(
                              //   thickness: 1,
                              //   color: AppColor.kGrey,
                              // ),
                              // Container(
                              //     padding:
                              //         EdgeInsets.only(right: 10, top: 10),
                              //     alignment: Alignment.topRight,
                              //     child: Text(
                              //       textDirection: TextDirection.rtl,
                              //       textAlign: TextAlign.right,
                              //       "سعر الكيلو الواط الواحد : 11500 .",
                              //       style: TextStyle(
                              //         fontSize: 15,
                              //       ),
                              //     )),
                              // Divider(
                              //   thickness: 1,
                              //   color: AppColor.kGrey,
                              // ),
                              // Container(
                              //     padding:
                              //         EdgeInsets.only(right: 10, top: 10),
                              //     alignment: Alignment.topRight,
                              //     child: Text(
                              //       textDirection: TextDirection.rtl,
                              //       textAlign: TextAlign.right,
                              //       " أصبحت قيمة هذه الفاتورة : 150.000 ليرة سورية .",
                              //       style: TextStyle(
                              //         fontSize: 15,
                              //       ),
                              //     )),
                             
                             
                            ],
                          ),
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
