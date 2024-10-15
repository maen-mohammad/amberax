import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';

// ignore: must_be_immutable
class WorkCollectionView extends StatelessWidget {
  final day = 23;
  final month = 7;
  final year = 2024;

  final isActive = 0;

  final statusBuy1 = "غير مدفوعة";
  final statusBuy2 = "مدفوعة";

  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الجابي  : أحمد القاضي ",
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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 120,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColor.kOrang,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: AppColor.kWhite,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            alignment: Alignment.center,
                            child: Text(
                              "الفواتير التي سجلها الجابي",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.kOrang),
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          alignment: Alignment.topRight,
                          child: Text(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            "العدد  :  200  فاتورة.",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                                color: AppColor.kWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  for (int i = 20; i != 0; i--)
                    InkWell(
                      onTap: () {},
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
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    "الاسم : أسامة رجب.",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),
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
                                      "العنوان  :\n  ريف دمشق - داريا - شارع الوحدة - بناء رجب .",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
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
                                    "ررقم المشترك : 30",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),
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
                                    "ررقم الصندوق : 30",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),
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
      ),
    );
  }
}
