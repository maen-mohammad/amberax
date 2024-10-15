import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class LastSections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LastComplaint(),
          LastInvoice(),
          LastOffers(),
          Container(
            height: 20,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class LastComplaint extends StatelessWidget {
  String replayComment = "سيتم حل مشكلة في أسرع وقت";
  final day = 23;
  final month = 7;
  final year = 2024;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "أخر الشكاوي",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 1),
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
                    for (int i = 0; i < 5; i++)
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            textDirection: TextDirection.rtl,
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 245, 241, 241),
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  " أسم المشترك : اسامة رجب",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 245, 241, 241),
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  "ليش انطعت الكهربا اليوم من ساعة اربعة العصر ولهلق ما أجت,يعني ما بعرف كيف بنا نكمل الشغل معكم .",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 245, 241, 241),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.only(right: 10, top: 10),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    "التاريخ : ${day} - ${month} - ${year}",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )),
                              SizedBox(
                                height: 8,
                              ),
                              // ignore: unnecessary_null_comparison
                              replayComment != null
                                  ? Container(
                                      margin: EdgeInsets.only(right: 50),
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 245, 241, 241),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        replayComment,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    )
                                  : Text(""),
                              Divider(
                                thickness: 1,
                                color: AppColor.kGrey,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class LastInvoice extends StatelessWidget {
  final day = 23;
  final month = 7;
  final year = 2024;

  final isActive = 0;
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "أخر الفواتير الصادرة الغير مدفوعة",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
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
                    for (int i = 5; i != 0; i--)
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
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
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
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class LastOffers extends StatelessWidget {
  const LastOffers({super.key});
  final day = 23;
  final month = 7;
  final year = 2024;

  final isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "عروض الشركة",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
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
                    for (int i = 0; i < 5; i++)
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    alignment: Alignment.topRight,
                                    child:
                                        Text("سعر الكيلو الواط الواحد : 9000"),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                          "باقي 5 أيا لانتهاء العرض الحالي")),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
