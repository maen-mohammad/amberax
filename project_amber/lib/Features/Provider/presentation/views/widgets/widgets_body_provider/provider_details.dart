import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/provider_edite_details.dart';
import 'package:project_amber/Features/auth/presentation/view_models/auth/auth_cubit.dart';
import 'package:project_amber/Features/component/custom_button.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ProvidersDetails extends StatelessWidget {
  const ProvidersDetails({super.key});

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
                      width: MediaQuery.of(context).size.width * 0.8,
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
                    child: BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        if (state is AuthSuccessState) {
                          return Column(
                            textDirection: TextDirection.rtl,
                            children: [
                              fieldsDetails(
                                  adress: ": اسم الشركة ",
                                  infoCompany: state.loginModel.user!.name!),
                              SizedBox(
                                height: 8,
                              ),
                              fieldsDetails(
                                  adress: " :منطقة التخديم",
                                  infoCompany: state.loginModel.user!.area!),
                              SizedBox(
                                height: 8,
                              ),
                              fieldsDetails(
                                  adress: " :أحياء المخدمة حاليا",
                                  infoCompany: state.loginModel.user!.streets!),
                              SizedBox(
                                height: 8,
                              ),
                              fieldsDetails(
                                  adress: " :رسوم الدفع ",
                                  infoCompany:
                                      state.loginModel.user!.feez.toString()),
                              SizedBox(
                                height: 8,
                              ),
                              fieldsDetails(
                                  adress: ": سعر كيلو الواط الواحد حالياَ ",
                                  infoCompany:
                                      state.loginModel.user!.costPk.toString()),
                              SizedBox(
                                height: 8,
                              ),
                              fieldsDetails(
                                  adress: ": رقم الهافت المحمول للتواصل",
                                  infoCompany:
                                      state.loginModel.user!.phone.toString()),
                              SizedBox(
                                height: 8,
                              ),
                              fieldsDetails(
                                  adress: ": رقم الهاتف الثابت للتواصل",
                                  infoCompany:
                                      state.loginModel.user!.phone2.toString()),
                              SizedBox(
                                height: 40,
                              ),
                              // fieldsDetails(
                              //     adress: "رسالة أعلان للمشتركين",
                              //     infoCompany:
                              //         "على جميع المشتركين الدفع حتى يوم الخميس"),
                              // SizedBox(
                              //   height: 40,
                              // ),
                              // fieldsDetails(
                              //     adress: "رسالة أعلان لموظفي الجباية",
                              //     infoCompany:
                              //         "على جميع موظفي الجباية  جمع قيمة العدادات حتى يوم الخميس"),
                              // SizedBox(
                              //   height: 40,
                              // ),
                              // fieldsDetails(
                              //     adress: "رسالة أعلان لموظفي صيانة ",
                              //     infoCompany:
                              //         "على جميع موظفي الصيانة  تركيب العدادات  حتى يوم الخميس"),
                              // fieldsDetails(
                              //     adress: "رسالة أعلان لموظفي المحاسبة ",
                              //     infoCompany:
                              //         "على جميع موظفي المحاسبة   حتى يوم الخميس"),
                              SizedBox(
                                height: 8,
                              ),
                              DefaultButton(
                                  text: "تعديل",
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return ProvidersEditeDetailsView(id: state.loginModel.user!.id!,);
                                      },
                                    ));
                                    // GoRouter.of(context).push(AppRouter.kProvidersEditeDetailsView);
                                  }),
                            ],
                          );
                        } else if (state is AuthFailureState) {
                          return Center(
                            child: Text(state.error),
                          );
                        } else if (state is AuthLoadingState) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return Center(
                          child: Text('لايوجد عناصر لعرضها'),
                        );
                      },
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
