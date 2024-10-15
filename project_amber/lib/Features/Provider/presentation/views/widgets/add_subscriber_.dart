import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/complet%20req%20cubit/complet_req_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/request%20cubit/get_request_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/custom_text_form_field.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/user/user_data.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class AddSubscriber extends StatefulWidget {
  var userinfo;
  AddSubscriber({super.key, required this.userinfo});

  @override
  State<AddSubscriber> createState() => _AddSubscriberState();
}

class _AddSubscriberState extends State<AddSubscriber> {
  XFile? _image;
  Future<void> _pickImageFromGallery() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(
      () {
        _image = image;
      },
    );
  }

  int duration = 10;
  final String imgHouse = "assets/images/logo.png";

  final String nameSubscriber = "أسامة";

  final String adressSubscriber = "ريف دمشق -  داريا -شارع الوحدة - بناء رجب";

  final String numberSubscriber = "12";

  final String phoneSubscriber = "0912345678";

  final TextEditingController address = new TextEditingController();

  final TextEditingController phone = new TextEditingController();

  final TextEditingController other = new TextEditingController();
  final user = UserData.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تقديم طلب المشترك",
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
                          //   textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            fieldsDetails(
                              controller: address,
                              title: "عنوان المشترك ",
                              content: adressSubscriber,
                              svg: "assets/icons/Location point.svg",
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            fieldsDetails(
                              controller: other,
                              title: "رقم التعريفي للمشترك",
                              content: widget.userinfo.user.id.toString(),
                              svg: "assets/icons/Star Icon.svg",
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            fieldsDetails(
                              controller: phone,
                              title: "هاتف المشترك",
                              content: phoneSubscriber,
                              svg: "assets/icons/Phone.svg",
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 95,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(25)),
                              child: InkWell(
                                onTap: () => _pickImageFromGallery(),
                                child: _image == null
                                    ? Container(
                                        width: 100,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                        child: Image.file(
                                          File(_image!.path),
                                          fit: BoxFit.fill,
                                        ),
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
                                text: "أضافة مشترك جديد ",
                                onTap: () {
                                  if (_image == null ||
                                      address.text == '' ||
                                      phone.text.length < 10) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Center(
                                                child: Text(
                                                    "يرجى ملئ جميع الحقول"))));
                                  } else if (_image != null &&
                                      address.text.length > 1 &&
                                      phone.text.length >= 10) {
                                    user.image = _image!.path;
                                    BlocProvider.of<CompletReqCubit>(context)
                                        .completreq({
                                      'id': widget.userinfo.id,
                                      'client_name': widget.userinfo.user.name,
                                      'address': address.text,
                                      'phone': phone.text,
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            duration:
                                                Duration(seconds: duration),
                                            content: BlocBuilder<
                                                    CompletReqCubit,
                                                    CompletReqState>(
                                                builder: (context, state) {
                                              if (state is CompletReqLoading) {
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              } else if (state
                                                  is CompletReqFailure) {
                                                // setState(() {});
                                                return Center(
                                                  child: Text(state.errormsg),
                                                );
                                              } else if (state
                                                  is CompletReqSuccess) {
                                                BlocProvider.of<
                                                            GetRequestCubit>(
                                                        context)
                                                    .requests();
                                                return Center(
                                                  child:
                                                      Text('تمت العملية بنجاح'),
                                                );
                                              }
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            })));
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    )),
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
    required this.svg,
    required this.controller,
  });
  final TextEditingController controller;
  final String title;
  final String content;
  final String svg;

  @override
  Widget build(BuildContext context) {
    return Column(
      // textDirection: TextDirection.rtl,
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Text(
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
          alignment: Alignment.topRight,
          child: CustomTextFormField(
            controller: controller,
            onTap: () {},
            bol: false,
            svgIcons: svg,
            type: TextInputType.text,
            textHint: content,
          ),
        ),
      ],
    );
  }
}
