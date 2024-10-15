import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/widgets/widgets_body_maintenance/banner.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/widgets/widgets_body_maintenance/categoreis.dart';
import 'package:project_amber/Features/Maintenance/presentation/views/widgets/widgets_body_maintenance/maintenance_header.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';


class MaintenanceViewBody extends StatelessWidget {
  const MaintenanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            MaintenanceHeader(),
            SizedBox(height: 10),
            BannerCard(),
            Categories(),
            SizedBox(height: 10),
            StatesWorkMaintennance(),
            LastOrdersSubscriber(),
           
             
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ],
        ),
      ),
    ));
  }
  
}

class StatesWorkMaintennance extends StatelessWidget {
  const StatesWorkMaintennance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                     
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColor.kOrang,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: AppColor.kWhite,
                                  borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              alignment: Alignment.center,
                              child: Text(
                                "إحصائيات الطلبات المنفذة  ",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.kOrang),
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.topRight,
                            child: Text(
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              "العدد  : 4000000",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  color: AppColor.kWhite),
                            ),
                          ),
                          
                          
                        ],
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

class LastOrdersSubscriber extends StatelessWidget {
  const LastOrdersSubscriber({super.key});
  final day = 23;
  final month = 7;
  final year = 2024;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColor.kOrang,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    " أقدم طلبات المشتركين ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.italic,
                                        color: AppColor.kWhite),
                                  ),
                                ),
                 
                  for (int i = 20; i != 0; i--)
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kOrdersSubsrcibeView);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Form(
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
                                    "رقم الطلب : 22",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.italic,
                                        color: AppColor.kWhite),
                                  ),
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                      "تاريخ تقديم الطلب : ${day} - ${month} - ${year}",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                                Divider(
                                  thickness: 1,
                                  color: AppColor.kGrey,
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                      "اسم المشترك : أسامة رجب.",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                                Divider(
                                  thickness: 1,
                                  color: AppColor.kGrey,
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                      "عنوان المشترك  :\n  ريف دمشق - داريا - شارع الوحدة - بناء رجب .",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                                Divider(
                                  thickness: 1,
                                  color: AppColor.kGrey,
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.right,
                                      "رقم المشترك : 30",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                                
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
  }
}