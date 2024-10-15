import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
// import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class InvoicesView extends StatelessWidget {
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

                              Container(
                                  padding: EdgeInsets.only(right: 10, top: 10),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    "صورة قيمة العداد :",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),

                              _selectedImage != null
                                  ? Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: FileImage(_selectedImage!),
                                            fit: BoxFit.cover,
                                          ),
                                          border: Border.all(
                                              color: AppColor.kOrang,
                                              width: 3,
                                              style: BorderStyle.solid),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    )
                                  : Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColor.kOrang,
                                              width: 3,
                                              style: BorderStyle.solid),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Center(
                                          child: Text('No Image Selected')),
                                    ),
                              _selectedImage != null
                                  ? Image.file(_selectedImage!)
                                  : const Text("hsa"),
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
                              Divider(
                                thickness: 1,
                                color: AppColor.kGrey,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        "حالة الدفع : غير مدفوعة",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 50,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: isActive != 1
                                              ? Colors.red
                                              : Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: AppColor.kGrey,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                      "قيمة الفاتورة : 100.000 ليرة سورية"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
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
