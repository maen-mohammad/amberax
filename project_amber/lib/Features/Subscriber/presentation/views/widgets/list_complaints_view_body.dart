import 'package:flutter/material.dart';
import 'package:project_amber/Features/component/text_form_field.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';


// ignore: must_be_immutable
class ListComplaintsViewBody extends StatelessWidget {
  String replayComment = "سيتم حل مشكلة في أسرع وقت";
  final day = 23;
  final month = 7;
  final year = 2024;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الشكاوي",
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
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        AppImageAsset.onBordingSeven,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  for (int i = 0; i < 10; i++)
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
                                    fontSize: 14, fontStyle: FontStyle.italic),
                              ),
                            ),
                            SizedBox(height: 5,),
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
                                    fontSize: 14, fontStyle: FontStyle.italic),
                              ),
                            ),
                           
                              
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 245, 241, 241),
                                  borderRadius: BorderRadius.circular(20)),
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                               "التاريخ : ${day} - ${month} - ${year}",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )),
                           SizedBox(height: 8,),
                            // ignore: unnecessary_null_comparison
                            replayComment != null
                                ? Container(
                                    margin: EdgeInsets.only(right: 50),
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 245, 241, 241),
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
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.kOrang,
        splashColor: AppColor.kWhite,
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            content: Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColor.kOrang,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'الرجاء أدخال  الشكوى',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: AppColor.kWhite),
              ),
            ),
            actions: <Widget>[
              Form(
                child: Column(
                  children: [
                    CustomTextFormField(
                      textLabel: "",
                      textHint: "أدخل الشكوى التي تريدها  ",
                      svgIcons: "assets/icons/Star Icon.svg",
                      controller: TextEditingController(),
                      type: TextInputType.emailAddress,
                    ),
                   
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * .3,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColor.kOrang,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text(
                              "أضافة",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  color: AppColor.kWhite),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * .3,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColor.kOrang,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text(
                              "ألغاء",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  color: AppColor.kWhite),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        child: Icon(
          Icons.add,
          color: AppColor.kWhite,
          size: 35,
        ),
      ),
    );
  }
}
