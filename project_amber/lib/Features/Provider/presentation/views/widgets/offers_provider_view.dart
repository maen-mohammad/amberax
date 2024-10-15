import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/add%20offer%20cubit/addoffer_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20offers/getoffers_cubit.dart';
import 'package:project_amber/Features/component/text_form_field.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class OffersProviderView extends StatelessWidget {
  OffersProviderView({super.key});
  final TextEditingController title = TextEditingController();
  final TextEditingController cost = TextEditingController();
  final TextEditingController days = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "العروض",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child:
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.05,
                // ),

                BlocBuilder<GetoffersCubit, GetoffersState>(
              builder: (context, state) {
                if (state is GetoffersLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GetoffersFailure) {
                  return Center(
                    child: Text(state.errormsg),
                  );
                } else if (state is GetoffersSuccess) {
                  return ListView.builder(
                    itemCount: state.offers.offer?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 245, 241, 241),
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: AppColor.kOrang,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      state.offers.offer![index].title!,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.italic,
                                          color: AppColor.kWhite),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      'سعر كيلو الواط الواحد مع العرض : ${state.offers.offer![index].costPk!.toString()}',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                          " مدة العرض : ${state.offers.offer![index].days!.toString()} يوم")),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
                return Center(
                  child: Text('لا يوجد بيانات لعرضها'),
                );
              },
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
                'الرجاء أدخال معلومات العرض',
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
                      textHint: "أدخل عنوان العرض ",
                      svgIcons: "assets/icons/Star Icon.svg",
                      controller: title,
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      textLabel: "",
                      textHint: "أدخل سعر كيلو واط الواحد : ",
                      svgIcons: "assets/icons/Star Icon.svg",
                      controller: cost,
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      textLabel: "",
                      textHint: "أدخل أيام فعالية العرض :",
                      svgIcons: "assets/icons/Star Icon.svg",
                      controller: days,
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
                            onPressed: () {
                              BlocProvider.of<AddofferCubit>(context).addoffer({
                                'title': title.text,
                                'cost_pk': cost.text,
                                'days': days.text,
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  duration: Duration(seconds: 10),
                                  content:
                                      BlocBuilder<AddofferCubit, AddofferState>(
                                          builder: (context, state) {
                                    if (state is AddofferLoading) {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    } else if (state is AddofferFailure) {
                                      return Center(
                                        child: Text(state.errormsg),
                                      );
                                    } else if (state is AddofferSuccess) {
                                      BlocProvider.of<GetoffersCubit>(context)
                                          .getOffers();
                                     
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
                              Navigator.pop(context, 'Cancel');
                            },
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
