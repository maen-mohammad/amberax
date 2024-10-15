import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20biils%20cubit/getbills_cubit.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class sectionsProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // LastComplaint(),
          LastInvoice(),
          // Employees(),
          // LastOffers(),
        ],
      ),
    );
  }
}

class Employees extends StatelessWidget {
  const Employees({super.key});
  final String imgHouse = "assets/images/logo.png";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "موظفي المحاسبة ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Column(
          children: [
            for (int i = 0; i < 2; i++)
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kWorkAccountantView);
                },
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            imgHouse,
                            height: 85,
                            width: 85,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Text(
                              "أسامة  رجب",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Text(
                              "osaarajab@gmail.com",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: PopupMenuButton(
                            padding: EdgeInsets.all(5),
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: AppColor.kOrang,
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: 1,
                                  child: TextButton(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.kAccountantDetails);
                                    },
                                    child: Text(
                                      "تعديل",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: AppColor.kOrang,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                              PopupMenuItem(
                                  value: 2,
                                  child: TextButton(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.kSubscriberDetails);
                                    },
                                    child: Text(
                                      "حذف",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: AppColor.kOrang,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            //Expanded(child: child),
          ],
        ),
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "موظفي الجباية",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Column(
          children: [
            for (int i = 0; i < 2; i++)
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kWorkCollectorView);
                },
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            imgHouse,
                            height: 85,
                            width: 85,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Text(
                              "أسامة  رجب",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Text(
                              "osaarajab@gmail.com",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: PopupMenuButton(
                            padding: EdgeInsets.all(5),
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: AppColor.kOrang,
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: 1,
                                  child: TextButton(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.kCollectorDetails);
                                    },
                                    child: Text(
                                      "تعديل",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: AppColor.kOrang,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                              PopupMenuItem(
                                  value: 2,
                                  child: TextButton(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.kSubscriberDetails);
                                    },
                                    child: Text(
                                      "حذف",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: AppColor.kOrang,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            //Expanded(child: child),
          ],
        ),
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "موظفي الصيانة ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Column(
          children: [
            for (int i = 0; i < 2; i++)
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kWorkMaintenanceView);
                },
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            imgHouse,
                            height: 85,
                            width: 85,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Text(
                              "أسامة  رجب",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            child: Text(
                              "osaarajab@gmail.com",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: PopupMenuButton(
                            padding: EdgeInsets.all(5),
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: AppColor.kOrang,
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: 1,
                                  child: TextButton(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.kMaintenanceDetails);
                                    },
                                    child: Text(
                                      "تعديل",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: AppColor.kOrang,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                              PopupMenuItem(
                                  value: 2,
                                  child: TextButton(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.kSubscriberDetails);
                                    },
                                    child: Text(
                                      "حذف",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: AppColor.kOrang,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            //Expanded(child: child),
          ],
        ),
      ],
    );
  }
}

class LastComplaint extends StatelessWidget {
  const LastComplaint({super.key});
  final String replayComment = "سيتم حل مشكلة في أسرع وقت";
  final day = 23;
  final month = 7;
  final year = 2024;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "أخر الشكاوي",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 1),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 2; i++)
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            textDirection: TextDirection.rtl,
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 245, 241, 241),
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  " أسم المشترك : اسامة رجب",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 245, 241, 241),
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.topRight,
                                child: Text(
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  "ليش انطعت الكهربا اليوم من ساعة اربعة العصر ولهلق ما أجت,يعني ما بعرف كيف بنا نكمل الشغل معكم .",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),

                              Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 245, 241, 241),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.only(right: 10, top: 10),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    "العنوان المشترك :  ريف دمشق - داريا - شارع الوحدة - بناء رجب .",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 245, 241, 241),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.only(right: 10, top: 10),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    "التاريخ : ${day} - ${month} - ${year}",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.80,
                                      child: ElevatedButton.icon(
                                        onPressed: () {
                                          GoRouter.of(context)
                                              .push(AppRouter.kReplayView);
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
                              replayComment != null
                                  ? Container(
                                      margin: EdgeInsets.only(right: 50),
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 245, 241, 241),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        replayComment,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    )
                                  : Text(""),
                              Divider(
                                thickness: 1,
                                color: AppColor.kGrey,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class LastInvoice extends StatelessWidget {
  final day = 23;
  final month = 7;
  final year = 2024;

  final isActive = 0;
  final statusBuy1 = "غير مدفوعة";
  final statusBuy2 = "مدفوعة";

  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "قيم الفواتير ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          // height: 220,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColor.kOrang,
                              borderRadius: BorderRadius.circular(10)),
                          child: BlocBuilder<GetbillsCubit, GetbillsState>(
                            builder: (context, state) {
                              if (state is GetbillsSuccess) {
                                return Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: AppColor.kWhite,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 2),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 6),
                                        alignment: Alignment.center,
                                        child: Text(
                                          " القيم الاجمالية",
                                          maxLines: 1,
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.kOrang),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      //margin: EdgeInsets.symmetric(vertical: 10),
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        "عدد الفواتير  : ${state.billsValue.billsCount.toString()}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                            color: AppColor.kWhite),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        "قيمة الفواتير : ${state.billsValue.totalBillsCost.toString()} ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                            color: AppColor.kWhite),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        "القيمة المدفوعة : ${state.billsValue.paidAmount.toString()}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                            color: AppColor.kWhite),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        "القيمة المتبقية : ${(state.billsValue.totalBillsCost! - state.billsValue.paidAmount!).toString()}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic,
                                            color: AppColor.kWhite),
                                      ),
                                    ),
                                  ],
                                );
                              } else if (state is GetbillsFailure) {
                                return Center(
                                  child: Text(state.errormsg),
                                );
                              } else if (state is GetbillsLoading) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return Center(
                                child: Text('لا يوجد عناصر لعرضها'),
                              );
                            },
                          ),
                        ),
                        // Container(
                        //   width: MediaQuery.of(context).size.width * 0.40,
                        //   height: 220,
                        //   padding: EdgeInsets.symmetric(
                        //       horizontal: 10, vertical: 15),
                        //   alignment: Alignment.center,
                        //   decoration: BoxDecoration(
                        //       color: AppColor.kOrang,
                        //       borderRadius: BorderRadius.circular(10)),
                        //   child: Column(
                        //     children: [
                        //       Container(
                        //           decoration: BoxDecoration(
                        //               color: AppColor.kWhite,
                        //               borderRadius: BorderRadius.circular(10)),
                        //           margin: EdgeInsets.symmetric(horizontal: 2),
                        //           padding: EdgeInsets.symmetric(
                        //               horizontal: 20, vertical: 6),
                        //           alignment: Alignment.center,
                        //           child: Text(
                        //             "المدفوعة",
                        //             textDirection: TextDirection.rtl,
                        //             textAlign: TextAlign.center,
                        //             style: TextStyle(
                        //                 fontSize: 16,
                        //                 fontWeight: FontWeight.w600,
                        //                 color: AppColor.kOrang),
                        //           )),
                        //       Container(
                        //         margin: EdgeInsets.symmetric(vertical: 10),
                        //         alignment: Alignment.topRight,
                        //         child: Text(
                        //           textDirection: TextDirection.rtl,
                        //           textAlign: TextAlign.right,
                        //           "العدد  : 4000",
                        //           style: TextStyle(
                        //               fontSize: 18,
                        //               fontWeight: FontWeight.w700,
                        //               fontStyle: FontStyle.italic,
                        //               color: AppColor.kWhite),
                        //         ),
                        //       ),
                        //       Container(
                        //         margin: EdgeInsets.symmetric(vertical: 5),
                        //         child: Text(
                        //           textDirection: TextDirection.rtl,
                        //           textAlign: TextAlign.right,
                        //           "بقيمة : 10.000.000 \n ليرة سورية فقط",
                        //           style: TextStyle(
                        //               fontSize: 18,
                        //               fontWeight: FontWeight.w700,
                        //               fontStyle: FontStyle.italic,
                        //               color: AppColor.kWhite),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                    // for (int i = 3; i != 0; i--)
                    //   InkWell(
                    //     onTap: () {},
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(10),
                    //       child: Container(
                    //         padding: EdgeInsets.all(12),
                    //         decoration: BoxDecoration(
                    //             color: Color.fromARGB(255, 234, 243, 248),
                    //             borderRadius: BorderRadius.circular(20)),
                    //         child: Column(
                    //           children: [
                    //             Container(
                    //               padding: EdgeInsets.symmetric(
                    //                   horizontal: 5, vertical: 5),
                    //               alignment: Alignment.center,
                    //               decoration: BoxDecoration(
                    //                   color: AppColor.kOrang,
                    //                   borderRadius: BorderRadius.circular(10)),
                    //               child: Text(
                    //                 "رقم الفاتورة : 22",
                    //                 style: TextStyle(
                    //                     fontSize: 18,
                    //                     fontWeight: FontWeight.w700,
                    //                     fontStyle: FontStyle.italic,
                    //                     color: AppColor.kWhite),
                    //               ),
                    //             ),
                    //             Container(
                    //                 padding:
                    //                     EdgeInsets.only(right: 10, top: 10),
                    //                 alignment: Alignment.topRight,
                    //                 child: Text(
                    //                   textDirection: TextDirection.rtl,
                    //                   textAlign: TextAlign.right,
                    //                   "الاسم : أسامة رجب.",
                    //                   style: TextStyle(
                    //                     fontSize: 15,
                    //                   ),
                    //                 )),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //                 padding:
                    //                     EdgeInsets.only(right: 10, top: 10),
                    //                 alignment: Alignment.topRight,
                    //                 child: Text(
                    //                   textDirection: TextDirection.rtl,
                    //                   textAlign: TextAlign.right,
                    //                   "ررقم المشترك : 30",
                    //                   style: TextStyle(
                    //                     fontSize: 15,
                    //                   ),
                    //                 )),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //                 padding:
                    //                     EdgeInsets.only(right: 10, top: 10),
                    //                 alignment: Alignment.topRight,
                    //                 child: Text(
                    //                   textDirection: TextDirection.rtl,
                    //                   textAlign: TextAlign.right,
                    //                   "ررقم الصندوق : 30",
                    //                   style: TextStyle(
                    //                     fontSize: 15,
                    //                   ),
                    //                 )),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //                 padding:
                    //                     EdgeInsets.only(right: 10, top: 10),
                    //                 alignment: Alignment.topRight,
                    //                 child: Text(
                    //                   textDirection: TextDirection.rtl,
                    //                   textAlign: TextAlign.right,
                    //                   "التاريخ : ${day} - ${month} - ${year}",
                    //                   style: TextStyle(
                    //                     fontSize: 15,
                    //                   ),
                    //                 )),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //               child: Row(
                    //                 mainAxisAlignment:
                    //                     MainAxisAlignment.spaceAround,
                    //                 children: [
                    //                   Column(
                    //                     children: [
                    //                       Text(
                    //                         textAlign: TextAlign.right,
                    //                         textDirection: TextDirection.rtl,
                    //                         "الأستهلاك",
                    //                         style: TextStyle(
                    //                           fontSize: 15,
                    //                         ),
                    //                       ),
                    //                       Text(
                    //                         "10",
                    //                         style: TextStyle(
                    //                           fontSize: 15,
                    //                         ),
                    //                       )
                    //                     ],
                    //                   ),
                    //                   Column(
                    //                     children: [
                    //                       Text(
                    //                         textAlign: TextAlign.right,
                    //                         textDirection: TextDirection.rtl,
                    //                         "الفاتورة الجديدة",
                    //                         style: TextStyle(
                    //                           fontSize: 15,
                    //                         ),
                    //                       ),
                    //                       Text(
                    //                         "210",
                    //                         style: TextStyle(
                    //                           fontSize: 15,
                    //                         ),
                    //                       )
                    //                     ],
                    //                   ),
                    //                   Column(
                    //                     textDirection: TextDirection.rtl,
                    //                     children: [
                    //                       Text(
                    //                         textAlign: TextAlign.right,
                    //                         textDirection: TextDirection.rtl,
                    //                         "الفاتورة القديمة",
                    //                         style: TextStyle(
                    //                           fontSize: 15,
                    //                         ),
                    //                       ),
                    //                       Text(
                    //                         "200",
                    //                         style: TextStyle(
                    //                           fontSize: 15,
                    //                         ),
                    //                       )
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //                 padding:
                    //                     EdgeInsets.only(right: 10, top: 10),
                    //                 alignment: Alignment.topRight,
                    //                 child: Text(
                    //                   textDirection: TextDirection.rtl,
                    //                   textAlign: TextAlign.right,
                    //                   "صورة قيمة العداد :",
                    //                   style: TextStyle(
                    //                     fontSize: 15,
                    //                   ),
                    //                 )),
                    //             _selectedImage != null
                    //                 ? Container(
                    //                     margin: EdgeInsets.only(top: 5),
                    //                     height: 200,
                    //                     decoration: BoxDecoration(
                    //                         image: DecorationImage(
                    //                           image: FileImage(_selectedImage!),
                    //                           fit: BoxFit.cover,
                    //                         ),
                    //                         border: Border.all(
                    //                             color: AppColor.kOrang,
                    //                             width: 3,
                    //                             style: BorderStyle.solid),
                    //                         borderRadius:
                    //                             BorderRadius.circular(25)),
                    //                   )
                    //                 : Container(
                    //                     margin: EdgeInsets.only(top: 5),
                    //                     height: 200,
                    //                     decoration: BoxDecoration(
                    //                         border: Border.all(
                    //                             color: AppColor.kOrang,
                    //                             width: 3,
                    //                             style: BorderStyle.solid),
                    //                         borderRadius:
                    //                             BorderRadius.circular(25)),
                    //                     child: Center(
                    //                         child: Text('No Image Selected')),
                    //                   ),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //               alignment: Alignment.topCenter,
                    //               child: Row(
                    //                 textDirection: TextDirection.rtl,
                    //                 mainAxisAlignment:
                    //                     MainAxisAlignment.spaceEvenly,
                    //                 children: [
                    //                   Container(
                    //                     alignment: Alignment.topRight,
                    //                     child: Text(
                    //                       textAlign: TextAlign.right,
                    //                       textDirection: TextDirection.rtl,
                    //                       "حالة الدفع :   ${statusBuy1}",
                    //                       style: TextStyle(
                    //                         fontSize: 15,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: 10,
                    //                   ),
                    //                   Container(
                    //                     width: 50,
                    //                     height: 20,
                    //                     decoration: BoxDecoration(
                    //                         color: isActive != 1
                    //                             ? Colors.red
                    //                             : Colors.green,
                    //                         borderRadius:
                    //                             BorderRadius.circular(100)),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //                 padding:
                    //                     EdgeInsets.only(right: 10, top: 10),
                    //                 alignment: Alignment.topRight,
                    //                 child: Text(
                    //                   textDirection: TextDirection.rtl,
                    //                   textAlign: TextAlign.right,
                    //                   "سعر الكيلو الواط الواحد : 11500 .",
                    //                   style: TextStyle(
                    //                     fontSize: 15,
                    //                   ),
                    //                 )),
                    //             Divider(
                    //               thickness: 1,
                    //               color: AppColor.kGrey,
                    //             ),
                    //             Container(
                    //                 padding: EdgeInsets.symmetric(
                    //                     horizontal: 5, vertical: 5),
                    //                 alignment: Alignment.center,
                    //                 decoration: BoxDecoration(
                    //                     color: AppColor.kOrang,
                    //                     borderRadius:
                    //                         BorderRadius.circular(10)),
                    //                 child: Text(
                    //                   "قيمة الفاتورة : 1.000.000 ليرة سورية",
                    //                   textDirection: TextDirection.rtl,
                    //                   textAlign: TextAlign.center,
                    //                   style: TextStyle(
                    //                       fontSize: 18,
                    //                       fontWeight: FontWeight.w700,
                    //                       fontStyle: FontStyle.italic,
                    //                       color: AppColor.kWhite),
                    //                 ))
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class LastOffers extends StatelessWidget {
  const LastOffers({super.key});
  final day = 23;
  final month = 7;
  final year = 2024;

  final isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColor.kOrang,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            alignment: Alignment.topRight,
            child: Text(
              "عروض الشركة",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.kWhite),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 2; i++)
                      InkWell(
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
                                      "الأمتحانات",
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
                                    child:
                                        Text("سعر الكيلو الواط الواحد : 9000"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
