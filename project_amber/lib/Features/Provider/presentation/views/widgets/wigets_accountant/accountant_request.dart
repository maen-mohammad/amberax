import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/edit%20employee%20cubit/editemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20employee%20cubit/getemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/custom_text_form_field.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class AccountantRequest extends StatefulWidget {
  const AccountantRequest({super.key, required this.id});

  final int id;

  @override
  State<AccountantRequest> createState() => _AccountantRequestState();
}

class _AccountantRequestState extends State<AccountantRequest> {
  final String imgHouse = "assets/images/logo.png";

  final String nameSubscriber = "أسامة";

  final String adressSubscriber = "ريف دمشق -  داريا -شارع الوحدة - بناء رجب";

  final String numberSubscriber = "12";

  final String phoneSubscriber = "0912345678";
  final TextEditingController name = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تعديل معلومات ",
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
                            title: "الأسم ",
                            content: nameSubscriber,
                            controller: name,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            title: "العنوان  ",
                            content: adressSubscriber,
                            controller: address,
                          ),
                          SizedBox(
                            height: 8,
                          ),

                          fieldsDetails(
                            title: "البريد الالكتروني",
                            content: widget.id.toString(),
                            controller: email,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            title: "كلمة المرور",
                            content: widget.id.toString(),
                            controller: password,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          // fieldsDetails(
                          //     title: "هاتف المحاسب", content: phoneSubscriber),
                          // SizedBox(
                          //   height: 4,
                          // ),
                          Container(
                            width: MediaQuery.of(context).size.width * .75,
                            // height: 200,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25)),
                            child: InkWell(
                              onTap: () {
                                _pickImage();
                              },
                              child: _image == null
                                  ? Container(
                                      width: 100,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.grey,
                                      ),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                        size: 50.0,
                                      ),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.file(_image!,
                                          fit: BoxFit.contain),
                                    ),
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
                                print(widget.id.toString() +
                                    address.text +
                                    _image!.path.toString());

                                if (_image == null ||
                                    address.text == '' ||
                                    email.text == '' ||
                                    password.text == '' ||
                                    name.text == '') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Center(
                                              child: Text(
                                                  "يرجى ملئ جميع الحقول"))));
                                } else if (_image != null &&
                                    email.text.length > 1 &&
                                    address.text.length > 1 &&
                                    name.text.length > 1 &&
                                    password.text.length > 1) {
                                  BlocProvider.of<EditemployeeCubit>(context)
                                      .editemployee({
                                    'id': widget.id,
                                    'name': name.text,
                                    'email': email.text,
                                    'password': password.text,
                                    'address': address.text,
                                    'photo': _image?.path,
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(seconds: 10),
                                      content: BlocBuilder<EditemployeeCubit,
                                              EditemployeeState>(
                                          builder: (context, state) {
                                        if (state is EditemployeeLoading) {
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        } else if (state
                                            is EditemployeeFailure) {
                                          return Center(
                                            child: Text(state.errormsg),
                                          );
                                        } else if (state
                                            is EditemployeeSuccess) {
                                          BlocProvider.of<GetemployeeCubit>(
                                                  context)
                                              .employee();
                                          Center(
                                            child: Text(state.msg),
                                          );
                                        }
                                        return Center(
                                          child: Text('تمت العملية'),
                                        );
                                      }),
                                    ),
                                  );
                                }

                                // GoRouter.of(context)
                                //     .push(AppRouter.kEmployeesView);
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
    required this.controller,
  });

  final String title;
  final String content;
  final TextEditingController controller;
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
          child: CustomTextFormField(
            controller: controller,
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
