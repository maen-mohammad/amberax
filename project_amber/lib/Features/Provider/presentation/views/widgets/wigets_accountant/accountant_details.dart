import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/data/models/employee/employe.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_accountant/accountant_request.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/services/services.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class AccountantDetails extends StatelessWidget {
  AccountantDetails({super.key, required this.employ});

  final String imgHouse = "assets/images/logo.png";
  final String nameSubscriber = "أسامة";
  final String adressSubscriber = "ريف دمشق -  داريا -شارع الوحدة - بناء رجب";
  final String numberSubscriber = "12";
  final String phoneSubscriber = "0912345678";
  final Employe employ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المعلومات الشحصية",
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
                // Container(
                //   decoration: BoxDecoration(
                //       //border: Border.all(width:3,color: Colors.red),
                //       borderRadius: BorderRadius.circular(20)),
                //   //color: Colors.red[200],
                //   height: MediaQuery.of(context).size.height * 0.3,
                //   width: MediaQuery.of(context).size.width * 95,
                //   child: Image.asset(imgHouse),
                // ),
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
                          fieldsDetails(title: "الأسم ", content: employ.name),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                              title: "العنوان  ", content: employ.address),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                              title: "الرقم التعريفي ",
                              content: employ.id.toString()),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text("صورة الهوية ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            // height: 200,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(25)),
                            child: employ.photo != null
                                ? Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width:
                                        MediaQuery.of(context).size.width * .75,
                                    // height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.kOrang,
                                          width: 3,
                                          style: BorderStyle.solid),
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl: Services.ip +
                                          'storage/' +
                                          employ.photo.toString(),
                                      fit: BoxFit.contain,
                                      placeholder: (context, url) => Center(
                                          child: CircularProgressIndicator()),
                                      errorWidget: (context, url, error) =>
                                          Center(
                                        child: Icon(Icons.error_outline),
                                      ),
                                    ),
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
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: DefaultButton(
                              text: "تعديل",
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return AccountantRequest(id: employ.id!,);
                                  },
                                ));
                                // GoRouter.of(context)
                                //     .push(AppRouter.kAccountantRequest);
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
    this.content,
  });

  final String title;
  final String? content;

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
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 246, 247),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text.rich(
            textAlign: TextAlign.right,
            TextSpan(
              text: '${content}',
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
