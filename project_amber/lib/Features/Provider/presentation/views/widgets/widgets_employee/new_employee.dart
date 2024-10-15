import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/add%20employee%20cubit/addemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20employee%20cubit/getemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/custom_text_form_field.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

// ignore: must_be_immutable
class NewEmployee extends StatefulWidget {
  @override
  State<NewEmployee> createState() => _NewEmployeeState();
}

class _NewEmployeeState extends State<NewEmployee> {
  final String imgHouse = "assets/images/logo.png";

  final String nameSubscriber = "";

  final String adressSubscriber = " ";

  final String numberSubscriber = "";

  final String phoneSubscriber = "";

  TextEditingController name = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  int d = 30;
  int _selectedValue = 1;
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
          "أضافة موظف جديد",
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
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .77,
                        height: MediaQuery.of(context).size.width * .55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // بداية انشاء ايقونة تعديل الصورة
                      // Positioned(
                      //   bottom: 0,
                      //   right: MediaQuery.of(context).size.width * .15,
                      //   child: Container(
                      //     height: 60,
                      //     width: 60,
                      //     decoration: BoxDecoration(
                      //       color: AppColor.kOrang,
                      //       shape: BoxShape.circle,
                      //       border: Border.all(
                      //         width: 4,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //     child: IconButton(
                      //       icon: Icon(Icons.edit),
                      //       color: Colors.white,
                      //       onPressed: () {
                      //         _pickImageFromGallery();
                      //       },
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
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
                        // textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              textAlign: TextAlign.right,
                              "قسم الموظف",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                                color: AppColor.kOrang,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            child: Container(
                                child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Radio<int>(
                                  value: 1,
                                  groupValue: _selectedValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedValue = 1;
                                    });
                                  },
                                ),
                                Text('الجباية'),
                                Radio<int>(
                                  value: 2,
                                  groupValue: _selectedValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedValue = 2;
                                    });
                                  },
                                ),
                                Text('المحاسبة'),
                                Radio<int>(
                                  value: 3,
                                  groupValue: _selectedValue,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _selectedValue = 3;
                                    });
                                  },
                                ),
                                Text('الصيانة'),
                              ],
                            )),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            controller: name,
                            title: "أسم الموظف",
                            content: nameSubscriber,
                            svg: "assets/icons/User.svg",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            controller: address,
                            title: "عنوان الموظف ",
                            content: adressSubscriber,
                            svg: "assets/icons/Location point.svg",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          // fieldsDetails(
                          //   title: "هاتف الموظف",
                          //   content: phoneSubscriber,
                          //   svg: "assets/icons/Phone.svg",
                          // ),
                          SizedBox(
                            height: 4,
                          ),
                          fieldsDetails(
                            controller: email,
                            title: "بريد الألكتروني للموظف ",
                            content: adressSubscriber,
                            svg: "assets/icons/Mail.svg",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          fieldsDetails(
                            controller: password,
                            title: "كلمة سر للموظف ",
                            content: adressSubscriber,
                            svg: "assets/icons/Lock.svg",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text("صورة هوية الموظف",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.italic,
                                  color: AppColor.kOrang,
                                )),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            // height: 200,
                            width: MediaQuery.of(context).size.width * 95,
                            decoration: BoxDecoration(
                                // color: Colors.red,
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

                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: DefaultButton(
                              text: "أضافة موظف ",
                              onTap: () {
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
                                  BlocProvider.of<AddemployeeCubit>(context)
                                      .addemployee({
                                    'name': name.text,
                                    'email': email.text,
                                    'password': password.text,
                                    'address': address.text,
                                    'photo': _image?.path,
                                  }, _selectedValue);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(seconds: 10),
                                      content: BlocBuilder<AddemployeeCubit,
                                              AddemployeeState>(
                                          builder: (context, state) {
                                        if (state is AddemployeeLoading) {
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        } else if (state
                                            is AddemployeeFailuer) {
                                          return Center(
                                            child: Text(state.errormsg),
                                          );
                                        } else if (state
                                            is Addemployeesuccess) {
                                          BlocProvider.of<GetemployeeCubit>(
                                                  context)
                                              .employee();

                                          Center(
                                            child: Text('تمت العملية بنجاح'),
                                          );
                                        }
                                        return Center(
                                          child: CircularProgressIndicator(),
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
          padding: EdgeInsets.all(10),
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

// Future _pickImageFromGallery() async {
//   final returnedImage =
//       await ImagePicker().pickImage(source: ImageSource.gallery);

//   setState() {
//     var _selectedImage = File(returnedImage!.path);
//   }

  
// }
