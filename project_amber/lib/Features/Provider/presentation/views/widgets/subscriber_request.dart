import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/edit%20client%20cubit/editclient_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20clients%20cubit/get_clients_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/custom_text_form_field.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/services/services.dart';
import 'package:project_amber/core/user/user_data.dart';

import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class SubscriberRequest extends StatefulWidget {
  SubscriberRequest({super.key, required this.user});
  var user;

  @override
  State<SubscriberRequest> createState() => _SubscriberRequestState();
}

class _SubscriberRequestState extends State<SubscriberRequest> {
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

  TextEditingController name = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  final String imgHouse = "assets/images/logo.png";

  final String nameSubscriber = "أسامة";

  final String adressSubscriber = "ريف دمشق -  داريا -شارع الوحدة - بناء رجب";

  final String numberSubscriber = "12";

  final String phoneSubscriber = "0912345678";
  final user1 = UserData.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تعديل معلومات المشترك",
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
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Form(
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Column(
                        // textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          fieldsDetails(
                            title: "أسم المشترك",
                            controller: name,
                            content: widget.user.clientName,
                            svg: "assets/icons/User.svg",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            title: "عنوان المشترك ",
                            controller: address,
                            content: widget.user.address,
                            svg: "assets/icons/Location point.svg",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            title: "رقم التعريفي المشترك",
                            controller: TextEditingController(),
                            content: widget.user.id.toString(),
                            svg: "assets/icons/Star Icon.svg",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            title: "هاتف المشترك",
                            controller: phone,
                            content: widget.user.phone.toString(),
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
                                  ? CachedNetworkImage(
                                      imageUrl: Services.ip +
                                          'storage/' +
                                          widget.user.idPhoto,
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Center(
                                          child: CircularProgressIndicator()),
                                      errorWidget: (context, url, error) =>
                                          Center(
                                        child: Icon(Icons.error_outline),
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
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: DefaultButton(
                              text: "تثبيت التعديلات ",
                              onTap: () {
                                if (_image == null ||
                                    address.text == '' ||
                                    phone.text.length < 10 ||
                                    name.text == '') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Center(
                                              child: Text(
                                                  "يرجى ملئ جميع الحقول"))));
                                } else if (_image != null &&
                                    address.text.length > 1 &&
                                    phone.text.length >= 10 &&
                                    name.text.length > 1) {
                                  user1.image = _image!.path;
                                  BlocProvider.of<EditclientCubit>(context)
                                      .editclient({
                                    'id': widget.user.id,
                                    'client_name': name.text,
                                    'address': address.text,
                                    'phone': phone.text,
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          duration: Duration(seconds: 8),
                                          content: BlocBuilder<EditclientCubit,
                                                  EditclientState>(
                                              builder: (context, state) {
                                            if (state is EditclientLoading) {
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            } else if (state
                                                is EditclientFailure) {
                                              return Center(
                                                child: Text(state.errormsg),
                                              );
                                            } else if (state
                                                is EditclientSuccess) {
                                              BlocProvider.of<GetClientsCubit>(
                                                      context)
                                                  .clients();

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
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CustomTextFormField(
            controller: controller,
            type: TextInputType.text,
            onTap: () {},
            textHint: content,
            bol: false,
            svgIcons: svg,
          ),
        ),
      ],
    );
  }
}

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