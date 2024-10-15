import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/custom_text_form_field.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class CollectionRequest extends StatelessWidget {
  const CollectionRequest({super.key});

  final String imgHouse = "assets/images/logo.png";
  final String nameSubscriber = "أسامة";
  final String adressSubscriber = "ريف دمشق -  داريا -شارع الوحدة - بناء رجب";
  final String numberSubscriber = "12";
  final String phoneSubscriber = "0912345678";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تعديل معلومات الجابي",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      //border: Border.all(width:3,color: Colors.red),
                      borderRadius: BorderRadius.circular(20)),
                  //color: Colors.red[200],
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 95,
                  child: Image.asset(imgHouse),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Form(
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Column(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          fieldsDetails(
                              title: "أسم الجابي", content: nameSubscriber),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                              title: "عنوان الجابي ",
                              content: adressSubscriber),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                              title: "رقم التعريفي لجابي",
                              content: numberSubscriber),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                              title: "هاتف الجابي", content: phoneSubscriber),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25)),
                            child: InkWell(
                              onTap: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  content: const Text(
                                    'لا يمكنك تعديل صورة الهوية وشكرا',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      
                                        color: AppColor.kOrang,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text(
                                        'الغاء',
                                        style: TextStyle(
                                            color: AppColor.kOrang,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text(
                                        'نعم',
                                        style: TextStyle(
                                            color: AppColor.kOrang,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              child: Image.asset(imgHouse),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: DefaultButton(
                              text: "تثبيت التعديلات ",
                              onTap: () {
                                GoRouter.of(context)
                                    .push(AppRouter.kEmployeesView);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class fieldsDetails extends StatelessWidget {
  const fieldsDetails({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Text(
            textAlign: TextAlign.right,
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              color: AppColor.kOrang,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),

          // height: 190,
          alignment: Alignment.topRight,

          // child: Text.rich(

          //   TextSpan(
          //     text: '${content}',
          //     style: TextStyle(
          //       color: Color.fromARGB(255, 138, 137, 137),
          //       //color: AppColor.kGrey,
          //       fontSize: 16,
          //       fontWeight: FontWeight.w400,
          //     ),
          //   ),
          // ),
          child:CustomTextFormField(            controller: TextEditingController(),

            onTap: () {},
            bol: false,
            svgIcons: "",
            type: TextInputType.text,
            textHint: content,
          ),
        ),
      ],
    );
  }
}
