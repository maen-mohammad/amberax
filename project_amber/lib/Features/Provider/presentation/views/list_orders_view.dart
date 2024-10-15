import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/request%20cubit/get_request_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/add_subscriber_.dart';

import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ListOrderssView extends StatelessWidget {
  const ListOrderssView({super.key});
  final String imgHouse = "assets/images/logo.png";
  final String imgPlace = "assets/images/drivethru.png";
  final int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الطلبات",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: BlocBuilder<GetRequestCubit, GetRequestState>(
            builder: (BuildContext context, GetRequestState state) {
              if (state is GetRequestLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetRequestFailure) {
                return Center(
                  child: Text(state.errormsg),
                );
              } else if (state is GetRequestSuccess) {
                return ListView.builder(
                  itemCount: state.request.requests?.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return AddSubscriber(userinfo: state.request.requests![index],);
                                },
                              ));
                        // GoRouter.of(context).push(AppRouter.kAddSubscriber);
                      },
                      child: Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.symmetric(vertical: 12),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 5),
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
                                Text(
                                  state.request.requests![index].user!.name!,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: PopupMenuButton(
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
                                          GoRouter.of(context).push(
                                              AppRouter.kSubscriberDetails);
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
                                  PopupMenuItem(
                                      value: 3,
                                      child: TextButton(
                                        onPressed: () {
                                          GoRouter.of(context)
                                              .push(AppRouter.kAddSubscriber);
                                        },
                                        child: Text(
                                          "أضافة",
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
                );
              }
              return Center(
                child: Text('لا يوجد طلبات'),
              );
            },
          ),
        ),
      ),
    );
  }
}
