import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/edit%20info%20cubit/editinfo_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/custom_text_form_field.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ProvidersEditeDetailsView extends StatelessWidget {
  ProvidersEditeDetailsView({super.key, required this.id});
  int id;
  final String infoCompany =
      "شركة تقو مبتزويد أغلب أحياء مدينة داريا بالطاقة الكهربائية المنتجة من مولدات ضخمة واعتمل على مدار ال 24 ساعة يوميا .";
  final TextEditingController area = TextEditingController();
  final TextEditingController street = TextEditingController();
  final TextEditingController feez = TextEditingController();
  final TextEditingController cost = TextEditingController();
  final TextEditingController phone1 = TextEditingController();
  final TextEditingController phone2 = TextEditingController();
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
                // Container(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(20),
                //     child: Image.asset(
                //       AppImageAsset.logo,
                //       fit: BoxFit.cover,
                //       width: MediaQuery.of(context).size.width * 0.9,
                //       height: MediaQuery.of(context).size.height * 0.35,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Form(
                    child: Column(
                      textDirection: TextDirection.rtl,
                      children: [
                        // fieldsDetails(
                        //     title: ": معلومات عن الشركة ",
                        //     content: infoCompany),
                        // SizedBox(
                        //   height: 8,
                        // ),
                        fieldsDetails(
                          title: " :منطقة التخديم",
                          content: "",
                          controller: area,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                          title: " :أحياء المخدمة حاليا",
                          content: "",
                          controller: street,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                          title: " :رسوم الدفع ",
                          content: "",
                          controller: feez,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                          title: ": سعر كيلو الواط الواحد حالياَ ",
                          content: " ",
                          controller: cost,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                          title: ": رقم الهاتف المحمول للتواصل",
                          content: " ",
                          controller: phone1,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        fieldsDetails(
                          title: ": رقم الهاتف الثابت للتواصل",
                          content: " ",
                          controller: phone2,
                        ),
                        // SizedBox(
                        //   height: 40,
                        // ),
                        // fieldsDetails(
                        //     title: "رسالة أعلان للمشتركين", content: ""),
                        // SizedBox(
                        //   height: 40,
                        // ),
                        // fieldsDetails(
                        //     title: "رسالة أعلان لموظفي الجباية",
                        //     content:
                        //         "على جميع موظفي الجباية  جمع قيمة العدادات حتى يوم الخميس"),
                        // SizedBox(
                        //   height: 40,
                        // ),
                        // fieldsDetails(
                        //     title: "رسالة أعلان لموظفي صيانة ",
                        //     content:
                        //         "على جميع موظفي الصيانة  تركيب العدادات  حتى يوم الخميس"),
                        // fieldsDetails(
                        //     title: "رسالة أعلان لموظفي المحاسبة ",
                        //     content:
                        //         "على جميع موظفي المحاسبة   حتى يوم الخميس"),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: DefaultButton(
                              text: "تثبيت التعديلات",
                              onTap: () {
                                BlocProvider.of<EditinfoCubit>(context)
                                    .editinfo({
                                  'id': id,
                                  'area': area.text,
                                  'streets': street.text,
                                  'feez': feez.text,
                                  'cost_pk': cost.text,
                                  'phone': phone1.text,
                                  'phone2': phone2.text,
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    duration: Duration(seconds: 10),
                                    content: BlocBuilder<EditinfoCubit,
                                            EditinfoState>(
                                        builder: (context, state) {
                                      if (state is EditinfoLoading) {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      } else if (state is EditinfoFailure) {
                                        return Center(
                                          child: Text(state.errormsg),
                                        );
                                      } else if (state is EditinfoSuccess) {
                                        Center(
                                          child: Text('تمت العملية بنجاح'),
                                        );
                                      }
                                      return Center(
                                        child: Text('جاري التعديل'),
                                      );
                                    }),
                                  ),
                                );
                              }),
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
    required this.title,
    required this.content,
    required this.controller,
  });
  final TextEditingController controller;
  final String title;
  final String content;

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
          width: MediaQuery.of(context).size.width * .95,
          padding: EdgeInsets.all(10),
          alignment: Alignment.topRight,
          child: CustomTextFormField(
            controller: controller,
            onTap: () {},
            bol: false,
            svgIcons: "assets/icons/Bill.svg",
            type: TextInputType.text,
            textHint: content,
          ),
        ),
      ],
    );
  }
}
