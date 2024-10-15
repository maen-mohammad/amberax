import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class ListComplaintsViewBody extends StatelessWidget {
  const ListComplaintsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Complaints",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
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
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.05,
                  // ),

                  for (int i = 0; i < 10; i++)
                    InkWell(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kProvidersDetailsView);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 241, 241),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              // Container(
                              //   alignment: Alignment.topLeft,
                              //   child: Text(textAlign: TextAlign.start,"${i} ) Complaints",style: TextStyle(color: AppColor.kOrang,fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),)),
                              Text(
                                "The company is a legal entity that aims to achieve profit by carrying out commercial activities. The company consists of a group of shareholders who provide the capital necessary to establish and operate it. Then each shareholder in the company is determined from the profits based on his financial contribution.",
                                style: TextStyle(
                                    fontSize: 14, fontStyle: FontStyle.italic),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.30,
                                      child: ElevatedButton.icon(
                                        onPressed: () {
                                          GoRouter.of(context)
                                              .push(AppRouter.kCommentsView);
                                        },
                                        label: Text(
                                          "like",
                                          style: TextStyle(
                                            color: AppColor.kOrang,
                                          ),
                                        ),
                                        icon: Icon(
                                          Icons.handshake,
                                          color: AppColor.kOrang,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.40,
                                      child: ElevatedButton.icon(
                                        onPressed: () {
                                          GoRouter.of(context)
                                              .push(AppRouter.kCommentsView);
                                        },
                                        label: Text(
                                          "comment",
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
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),

                  //Expanded(child: child),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
