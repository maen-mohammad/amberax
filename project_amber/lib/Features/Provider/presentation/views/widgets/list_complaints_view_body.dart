import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/add%20response%20cubit/addresponse_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20complaints%20cubit/getcomplanints_cubit.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/Features/component/text_form_field.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

// ignore: must_be_immutable
class ListComplaintsProviderViewBody extends StatelessWidget {
  final TextEditingController response = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الشكاوي",
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
              child: BlocBuilder<GetcomplanintsCubit, GetcomplanintsState>(
                builder: (context, state) {
                  if (state is GetcomplanintsSuccess) {
                    return ListView.builder(
                      itemCount: state.complaints.complaints?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              textDirection: TextDirection.rtl,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 50),
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 245, 241, 241),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    state.complaints.complaints![index]
                                        .descreption!,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 50),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 245, 241, 241),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                      "التاريخ : ${state.complaints.complaints![index].createdAt?.day} - ${state.complaints.complaints![index].createdAt?.month} - ${state.complaints.complaints![index].createdAt?.year} ",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.80,
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            showDialog<String>(
                                                context: context,
                                                builder:
                                                    (BuildContext context) =>
                                                        AlertDialog(
                                                          content: Container(
                                                            height: 60,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5,
                                                                    vertical:
                                                                        5),
                                                            alignment: Alignment
                                                                .center,
                                                            decoration: BoxDecoration(
                                                                color: AppColor
                                                                    .kOrang,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Text(
                                                              'إدخال الرد',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  color: AppColor
                                                                      .kWhite),
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            Form(
                                                              child: Column(
                                                                children: [
                                                                  CustomTextFormField(
                                                                    textLabel:
                                                                        "",
                                                                    textHint:
                                                                        "الرد",
                                                                    svgIcons:
                                                                        "assets/icons/Star Icon.svg",
                                                                    controller:
                                                                        response,
                                                                    type: TextInputType
                                                                        .emailAddress,
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Row(
                                                                    textDirection:
                                                                        TextDirection
                                                                            .rtl,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            50,
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .3,
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                5,
                                                                            vertical:
                                                                                5),
                                                                        alignment:
                                                                            Alignment.center,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                AppColor.kOrang,
                                                                            borderRadius: BorderRadius.circular(10)),
                                                                        child:
                                                                            TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            BlocProvider.of<AddresponseCubit>(context).addresponse({
                                                                              'complaint_id': state.complaints.complaints?[index].id,
                                                                              'comp_response': response.text,
                                                                            });
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                duration: Duration(seconds: 10),
                                                                                content: BlocBuilder<AddresponseCubit, AddresponseState>(builder: (context, state) {
                                                                                  if (state is AddresponseLoading) {
                                                                                    return Center(
                                                                                      child: CircularProgressIndicator(),
                                                                                    );
                                                                                  } else if (state is AddresponseFailure) {
                                                                                    return Center(
                                                                                      child: Text(state.errormsg),
                                                                                    );
                                                                                  } else if (state is AddresponseSuccess) {
                                                                                    BlocProvider.of<GetcomplanintsCubit>(context).getcomplaints();

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
                                                                            Navigator.pop(context,
                                                                                'Cancel');
                                                                          },
                                                                          child:
                                                                              const Text(
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
                                                                        height:
                                                                            50,
                                                                        width: MediaQuery.of(context).size.width *
                                                                            .3,
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                5,
                                                                            vertical:
                                                                                5),
                                                                        alignment:
                                                                            Alignment.center,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                AppColor.kOrang,
                                                                            borderRadius: BorderRadius.circular(10)),
                                                                        child:
                                                                            TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              context,
                                                                              'Cancel'),
                                                                          child:
                                                                              const Text(
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
                                                        ));
                                          },
                                          label: Text(
                                            "رد",
                                            style: TextStyle(
                                              color: AppColor.kOrang,
                                            ),
                                          ),
                                          icon: Icon(
                                            Icons.message,
                                            color: AppColor.kOrang,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // ignore: unnecessary_null_comparison
                                Container(
                                  margin: EdgeInsets.only(right: 50),
                                  height: 150,
                                  child: ListView.builder(
                                    itemCount: state.complaints
                                        .complaints![index].responses?.length,
                                    itemBuilder:
                                        (BuildContext context, int index1) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3.0),
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 245, 241, 241),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  topLeft:
                                                      Radius.circular(20))),
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            state
                                                .complaints
                                                .complaints![index]
                                                .responses![index1]
                                                .compResponse!,
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),

                                Divider(
                                  thickness: 1,
                                  color: AppColor.kGrey,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (state is GetcomplanintsLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is GetcomplanintsFailure) {
                    return Center(
                      child: Text(state.errormsg),
                    );
                  }
                  return Center(
                    child: Text('لا يوجد عناصر لعرضها'),
                  );
                },
              )),
        ),
      ),
    );
  }
}
