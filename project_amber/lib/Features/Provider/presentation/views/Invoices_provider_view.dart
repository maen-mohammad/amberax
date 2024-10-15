import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20biils%20cubit/getbills_cubit.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/services/services.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';
// import 'package:project_amber/core/utlites/app_color.dart';

// ignore: must_be_immutable
class InvoicesProviderView extends StatelessWidget {
  // final today = DateTime.now();
  final day = 23;
  final month = 7;
  final year = 2024;

  final isActive = 0;

  final statusBuy1 = "غير مدفوعة";
  final statusBuy2 = "مدفوعة";
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الفواتير",
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
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       padding: EdgeInsets.all(5),
                //       child: Image.asset(
                //         AppImageAsset.Invices,
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                BlocBuilder<GetbillsCubit, GetbillsState>(
                    builder: (context, state) {
              if (state is GetbillsSuccess) {
                return ListView.builder(
                  itemCount: state.billsValue.bills?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 243, 248),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: AppColor.kOrang,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "رقم الفاتورة : ${state.billsValue.bills?[index].id.toString()}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                    color: AppColor.kWhite),
                              ),
                            ),
                            // Container(
                            //     padding: EdgeInsets.only(right: 10, top: 10),
                            //     alignment: Alignment.topRight,
                            //     child: Text(
                            //       textDirection: TextDirection.rtl,
                            //       textAlign: TextAlign.right,
                            //       "الاسم : أسامة رجب.",
                            //       style: TextStyle(
                            //         fontSize: 15,
                            //       ),
                            //     )),
                            // Divider(
                            //   thickness: 1,
                            //   color: AppColor.kGrey,
                            // ),
                            Container(
                                padding: EdgeInsets.only(right: 10, top: 10),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  "ررقم المشترك : ${state.billsValue.bills?[index].userId.toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Divider(
                              thickness: 1,
                              color: AppColor.kGrey,
                            ),
                            // Container(
                            //     padding: EdgeInsets.only(right: 10, top: 10),
                            //     alignment: Alignment.topRight,
                            //     child: Text(
                            //       textDirection: TextDirection.rtl,
                            //       textAlign: TextAlign.right,
                            //       "ررقم الصندوق : 30",
                            //       style: TextStyle(
                            //         fontSize: 15,
                            //       ),
                            //     )),
                            // Divider(
                            //   thickness: 1,
                            //   color: AppColor.kGrey,
                            // ),
                            Container(
                                padding: EdgeInsets.only(right: 10, top: 10),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  "التاريخ : ${state.billsValue.bills![index].createdAt?.day.toString()} - ${state.billsValue.bills![index].createdAt?.month.toString()} - ${state.billsValue.bills![index].createdAt?.year.toString()}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Divider(
                              thickness: 1,
                              color: AppColor.kGrey,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        "الاجمالي",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        (state.billsValue.bills![index]
                                                    .newValue! -
                                                state.billsValue.bills![index]
                                                    .oldValue!)
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        "الفاتورة الجديدة",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        state.billsValue.bills![index].newValue
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        "الفاتورة القديمة",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        state.billsValue.bills![index].oldValue
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: AppColor.kGrey,
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 10, top: 10),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  "صورة قيمة العداد :",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            state.billsValue.bills?[index].photo != null
                                ? Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.kOrang,
                                          width: 3,
                                          style: BorderStyle.solid),
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl: Services.ip +
                                          'storage/' +
                                          state.billsValue.bills![index].photo
                                              .toString(),
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
                            Divider(
                              thickness: 1,
                              color: AppColor.kGrey,
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      textAlign: TextAlign.right,
                                      textDirection: TextDirection.rtl,
                                      "حالة الدفع :   ${state.billsValue.bills![index].state == 0 ? 'غير مدفوعة' : 'مدفوعة'}",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: state.billsValue.bills![index]
                                                    .state ==
                                                0
                                            ? Colors.red
                                            : Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: AppColor.kGrey,
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 10, top: 10),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  "سعر الكيلو الواط الواحد : 11500 .",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Divider(
                              thickness: 1,
                              color: AppColor.kGrey,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColor.kOrang,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "قيمة الفاتورة : ${state.billsValue.bills![index].cost.toString()}",
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                      color: AppColor.kWhite),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else if (state is GetbillsLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetbillsFailure) {
                return Center(
                  child: Text(state.errormsg),
                );
              }
              return Center(
                child: Text('لا يوجد عناصر لعرضها'),
              );
            }),
            // LastLine(),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
