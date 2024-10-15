import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/delete%20client%20cubit/deletclient_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20clients%20cubit/get_clients_cubit.dart';

import '../../../../../core/utlites/app_color.dart';
import '../../../../../core/utlites/app_router.dart';

class EditSubscriber extends StatelessWidget {
  EditSubscriber({super.key, required this.user});
  var user;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          //         GoRouter.of(context).push(AppRouter.kSubscriberDetails);
          //       },
          //       child: Text(
          //         "تعديل",
          //         textAlign: TextAlign.right,
          //         style: TextStyle(
          //             color: AppColor.kOrang,
          //             fontSize: 18,
          //             fontWeight: FontWeight.w600),
          //       ),
          //     )),
          PopupMenuItem(
              value: 2,
              child: TextButton(
                onPressed: () {
                  BlocProvider.of<DeletclientCubit>(context)
                      .deleteclient({'id': user.id});

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 5),
                      content: BlocBuilder<DeletclientCubit, DeletclientState>(
                          builder: (context, state) {
                        if (state is DeletclientLoading) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is DeletclientFailure) {
                          return Center(
                            child: Text(state.errormsg),
                          );
                        } else if (state is DeletclientSuccess) {
                          BlocProvider.of<GetClientsCubit>(context).clients();

                          return Center(
                            child: Text('تمت العملية بنجاح'),
                          );
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      })));
                  // GoRouter.of(context).push(AppRouter.kSubscriberDetails);
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
    );
  }
}
