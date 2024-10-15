import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
// import 'package:project_amber/core/utlites/app_color.dart';

class OrdersSubsrcibeView extends StatelessWidget {
  // final today = DateTime.now();
  final day = 23;
  final month = 7;
  final year = 2024;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " الطلبات المطلوبة ",
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
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.kOrang,
                          width: 4,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20),
                      // color: const Color.fromARGB(255, 230, 227, 227)
                    ),
                    child: TextField(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      onChanged: (value) => print(value),
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "  البحث عن الشارع او  ساحة ",
                          suffixIcon: Icon(Icons.search)),
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
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Form(
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
                                    "رقم الطلب : 22",
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
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                      "تاريخ تقديم الطلب : ${day} - ${month} - ${year}",
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
                                      "اسم المشترك : أسامة رجب.",
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
                                      "عنوان المشترك  :\n  ريف دمشق - داريا - شارع الوحدة - بناء رجب .",
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
                                      "رقم المشترك : 30",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                                Divider(
                                  thickness: 1,
                                  color: AppColor.kGrey,
                                ),
                                Container(
                                  // width: 100,
                                  // height: 50,

                                  alignment: Alignment.center,
                                  child: Column(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.only(
                                              right: 10, top: 10),
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            "ادخال  رقم الصندوق المشترك :",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColor.kOrang,
                                                width: 4,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          textDirection: TextDirection.rtl,
                                          onChanged: (value) {},
                                          cursorColor: AppColor.kGrey,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                              focusColor: AppColor.kGrey,
                                              hintText: "200",
                                              hintTextDirection:
                                                  TextDirection.rtl,
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.always,
                                              contentPadding: EdgeInsets.only(
                                                  top: 10, bottom: 10),
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600,
                                              )),
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                            color: AppColor.kOrang,
                                            fontStyle: FontStyle.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  color: AppColor.kGrey,
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: AppColor.kOrang,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "تأكيد طلب الأشتراك",
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.italic,
                                          color: AppColor.kWhite),
                                    ))
                              ],
                            ),
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

Future _pickImageFromCamera() async {
  final returnedImage =
      await ImagePicker().pickImage(source: ImageSource.camera);
  if (returnedImage == null) return;
  // ignore: unused_element
  setState() {
    // ignore: unused_local_variable
    var _selectedImage = File(returnedImage.path);
  }

  ;
}
