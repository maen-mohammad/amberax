import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/data/models/employee/employe.dart';
import 'package:project_amber/Features/Provider/data/models/employee/employee.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/edit%20employee%20cubit/editemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20employee%20cubit/getemployee_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/widgets_body_provider/sections_provider.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/wigets_accountant/accountant_details.dart';

import '../../../../../../core/utlites/app_color.dart';
import '../../../../../../core/utlites/app_router.dart';

class CustomTabBarViewItem extends StatelessWidget {
  const CustomTabBarViewItem({
    super.key,
    required this.imgHouse,
    required this.router,
    required this.router1,
    required this.type,
  });

  final String imgHouse;
  final String router;
  final String router1;
  final int type;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetemployeeCubit, GetemployeeState>(
      builder: (context, state) {
        if (state is GetemployeeSuccess) {
          // var empl = List<Iterable<Employe>>.generate(
          //   state.employee.employes!
          //       .where((employee) => employee.type == type)
          //       .length,
          //   (index) => state.employee.employes!
          //       .where((employee) => employee.type == type),
          // );
          //     List<Employe> employees = (state.employee.employes?.where((employee) => employee.type == type)
          //            as List<Employe>)
          // .map((employeeJson) => Employe.fromJson(employeeJson))
          // .toList();
          // print(employees.toString());

          return Container(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListView.builder(
                  itemCount: state.employee.employes?.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return AccountantDetails(
                                employ: state.employee.employes![index]);
                          },
                        ));
                      },
                      child: Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.asset(
                                      imgHouse,
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      child: Text(
                                        state.employee.employes![index].name!,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      child: Text(
                                        state.employee.employes![index].type! ==
                                                1
                                            ? 'جباية'
                                            : state.employee.employes![index]
                                                        .type! ==
                                                    2
                                                ? 'محاسبة'
                                                : 'صيانة',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: PopupMenuButton(
                                icon: Icon(
                                  Icons.settings,
                                  size: 30,
                                  color: AppColor.kOrang,
                                ),
                                itemBuilder: (context) => [
                                  // PopupMenuItem(
                                  //     value: 1,
                                  //     child: TextButton(
                                  //       onPressed: () {
                                  //         Navigator.of(context)
                                  //             .push(MaterialPageRoute(
                                  //           builder: (context) {
                                  //             return AccountantDetails();
                                  //           },
                                  //         ));
                                  //       },
                                  //       child: Text(
                                  //         "تفاصيل",
                                  //         textAlign: TextAlign.right,
                                  //         style: TextStyle(
                                  //             color: AppColor.kOrang,
                                  //             fontSize: 18,
                                  //             fontWeight: FontWeight.w600),
                                  //       ),
                                  //     )),
                                  PopupMenuItem(
                                      value: 1,
                                      child: TextButton(
                                        onPressed: () {
                                          BlocProvider.of<EditemployeeCubit>(
                                                  context)
                                              .deleteemployee({
                                            'id': state
                                                .employee.employes?[index].id
                                          });
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              duration: Duration(seconds: 10),
                                              content: BlocBuilder<
                                                      EditemployeeCubit,
                                                      EditemployeeState>(
                                                  builder: (context, state) {
                                                if (state
                                                    is EditemployeeLoading) {
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  );
                                                } else if (state
                                                    is EditemployeeFailure) {
                                                  return Center(
                                                    child: Text(state.errormsg),
                                                  );
                                                } else if (state
                                                    is EditemployeeSuccess) {
                                                  Center(
                                                    child: Text(state.msg),
                                                  );
                                                }
                                                return Center(
                                                  child: Text('تمت العملية'),
                                                );
                                              }),
                                            ),
                                          );
                                          BlocProvider.of<GetemployeeCubit>(
                                                  context)
                                              .employee();
                                          // GoRouter.of(context).push(
                                          //     AppRouter.kSubscriberDetails);
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
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        } else if (state is GetemployeeFailure) {
          return Center(
            child: Text(state.errormsg),
          );
        } else if (state is GetemployeeLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
          child: Text('لا يوجد بيانات لعرضها'),
        );
      },
    );
  }
}
