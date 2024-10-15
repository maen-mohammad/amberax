import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_amber/Features/Accountant/presentation/views/widgets/widgets_body_subscriber/text_form.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
// import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class InvoicesCollectionView extends StatelessWidget {
  // final today = DateTime.now();
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
          " الفواتير الصادرة ",
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
                          hintText: "  البحث عن مشتر ك : أسامة رجب أو  123",
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
                                    "رقم التعريفي للمشترك : 22",
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
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
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
                                          Container(
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              textDirection: TextDirection.rtl,
                                              "الفاتورة الجديدة",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
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
                                            "ادخال قيمة العداد الحديثة :",
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
                                Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                    InkWell(
                                      onTap: () {
                                        _pickImageFromCamera();
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 5),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: AppColor.kOrang,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            "التقاط صورة",
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.italic,
                                                color: AppColor.kWhite),
                                          )),
                                    )
                                  ],
                                ),
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: AppColor.kOrang,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "أصدار الفاتورة",
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
