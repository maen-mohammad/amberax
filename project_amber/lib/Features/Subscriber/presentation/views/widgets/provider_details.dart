import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';

class ProvidersDetailsView extends StatelessWidget {
  const ProvidersDetailsView({super.key});

  final String infoCompany =
      "شركة تقو مبتزويد أغلب أحياء مدينة داريا بالطاقة الكهربائية المنتجة من مولدات ضخمة واعتمل على مدار ال 24 ساعة يوميا .";

  final String adress = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      AppImageAsset.logo,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Form(
                    child: Column(
                      textDirection: TextDirection.rtl,
                      children: [
                        fieldsDetails(
                            adress: ": معلومات عن الشركة ",
                            infoCompany: infoCompany),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                            adress: " :منطقة التخديم", infoCompany: "داريا"),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                            adress: " :أحياء المخدمة حاليا",
                            infoCompany:
                                ".شارع الوحدة -شارع الشاميات - شارع الثانوية الشرعية -شارع البلدية"),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                            adress: " :رسوم الدفع ", infoCompany: "200.00"),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                            adress: ": سعر كيلو الواط الواحد حالياَ ",
                            infoCompany: "10500 "),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                            adress: ": رقم الهافت المحمول للتواصل",
                            infoCompany: "0932165487 "),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                            adress: ": رقم الهاتف الثابت للتواصل",
                            infoCompany: "0116294568 "),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: DefaultButton(
                            text: "أشتراك",
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                content: Text(
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                  "نشكر على ثقتك بنا ونطلب منك زيارتنا في مقر الشركة لأستكمال باقي الأوراق  مع السلامة .",
                                  style: TextStyle(
                                      color: AppColor.kOrang,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                                actions: <Widget>[
                                  DefaultButton(
                                    text: "أغلاق",
                                    onTap: () {
                                      GoRouter.of(context).pop();
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
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
    required this.adress,
    required this.infoCompany,
  });

  final String adress;
  final String infoCompany;

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Text(
            textAlign: TextAlign.right,
            adress,
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
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 246, 247),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text.rich(
            textAlign: TextAlign.right,
            TextSpan(
              text: '${infoCompany}',
              style: TextStyle(
                color: Color.fromARGB(255, 138, 137, 137),
                //color: AppColor.kGrey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
