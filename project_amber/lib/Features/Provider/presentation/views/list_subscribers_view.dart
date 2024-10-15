import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Provider/presentation/view_models/get%20clients%20cubit/get_clients_cubit.dart';
import 'package:project_amber/Features/Provider/presentation/views/widgets/subscriber_details.dart';
import 'package:project_amber/core/services/services.dart';
import 'package:project_amber/core/utlites/app_router.dart';

import 'widgets/edit_subscriber.dart';
import 'widgets/information_subscriber.dart';

class ListSubscribersView extends StatelessWidget {
  const ListSubscribersView({super.key});
  final String imgHouse = "assets/images/logo.png";
  final String imgPlace = "assets/images/drivethru.png";
  final int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المشتركين",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: BlocBuilder<GetClientsCubit, GetClientsState>(
            builder: (context, state) {
              if (state is GetClientsLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetClientsFailure) {
                return Center(
                  child: Text(state.errormsg),
                );
              } else if (state is GetClientsSuccess) {
                return ListView.builder(
                  itemCount: state.clientsModel.clients?.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print(Services.baseUrl);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return SubscriberDetails(
                              user: state.clientsModel.clients?[index],
                            );
                          },
                        ));
                        // GoRouter.of(context).push(AppRouter.kSubscriberDetails);
                      },
                      child: Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(right: 20, top: 10, left: 8),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.asset(
                                      imgHouse,
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                ),
                                InformationSubsciber(
                                  user: state.clientsModel.clients?[index],
                                ),
                              ],
                            ),
                            EditSubscriber( user: state.clientsModel.clients?[index],),
                          ],
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
          )

          //            LastLine(),

          ),
    );
  }
}
