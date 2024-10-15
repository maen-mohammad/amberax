import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_employee/custom_tabbar_view_item.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_employee/custom_text.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class EmployeesView extends StatelessWidget {
  const EmployeesView({super.key});
  final String imgHouse = "assets/images/logo.png";
  final String imgPlace = "assets/images/drivethru.png";
  final int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              foregroundColor: AppColor.kWhite,
              backgroundColor: AppColor.kOrang,
              elevation: 0,
              centerTitle: true,
              title: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "الموظفين",
                  style: TextStyle(color: AppColor.kWhite, fontSize: 20),
                ),
              ),
              actions: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kNewEmployee);
                        },
                        icon: Icon(
                          Icons.add,
                          color: AppColor.kOrang,
                          size: 20,
                        )))
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                // color: AppColor.kOrang
                ),
            child: CustomTabBarViewItem(
              type: 1,
              imgHouse: imgHouse,
              router: AppRouter.kWorkAccountantView,
              router1: AppRouter.kAccountantDetails,
            ),
            // TabBar(
            //   tabAlignment: TabAlignment.center,
            //   isScrollable: true,
            //   indicatorColor: AppColor.kWhite,
            //   indicatorWeight: 5,
            //   labelStyle:
            //       TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   tabs: [
            // tab one
            // Container(
            //   width: MediaQuery.of(context).size.width * .29,
            //   child: Tab(
            //     child: CustomText(text: "الصيانة"),
            //   ),
            // ),
            // tab two
            //       Container(
            //         width: MediaQuery.of(context).size.width * .29,
            //         child: Tab(
            //           child: CustomText(text: "الجباية"),
            //         ),
            //       ),
            //       // tab three
            //       // Container(
            //       //   width: MediaQuery.of(context).size.width * .29,
            //       //   child: Tab(
            //       //     child: CustomText(text: "المحاسبة"),
            //       //   ),
            //       // ),
            //     ],
            //   ),
            // ),
            // Flexible(
            //     flex: 1,
            //     child: TabBarView(children: [
            // CustomTabBarViewItem(
            //   type: 3,
            //   imgHouse: imgHouse,
            //   router: AppRouter.kWorkMaintenanceView,
            //   router1: AppRouter.kMaintenanceDetails,
            // ),
            // CustomTabBarViewItem(
            //   type: 2,
            //   imgHouse: imgHouse,
            //   router: AppRouter.kWorkCollectorView,
            //   router1: AppRouter.kCollectorDetails,
            // ),
            // CustomTabBarViewItem(
            //   type: 1,
            //   imgHouse: imgHouse,
            //   router: AppRouter.kWorkAccountantView,
            //   router1: AppRouter.kAccountantDetails,
            // ),
            // ],),
            // )
          )),
    );
  }
}
