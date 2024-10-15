import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class InvoicesView extends StatelessWidget {
  final today = DateTime.now();
  final  isActive= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoices",
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
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.05,
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Subscriber name : Osama Rajab",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Subscriber number : 112",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Box Number : 4",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                  ),

                  for (int i = 20; i != 0; i--)
                    InkWell(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kProvidersDetailsView);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              // color: Color.fromARGB(255, 245, 241, 241),
                              color: Color.fromARGB(255, 234, 243, 248),
                              // color: Color.fromARGB(255, 244, 248, 250),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Row(
                                
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Date :  ${today.year} ${today.month} ${today.day}",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                      
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                 // border: Border.all(width: 2,color:AppColor.kOrang,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Column(children: [
                                    Text(
                                      textAlign: TextAlign.left,
                                        "Old invoice",
                                        style: TextStyle(
                                          fontSize: 15,

                                        ),
                                      ),
                                      Text(
                                        "200",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )
                                  ],),
                                  Column(children: [
                                    Text(
                                        "New invoice",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "210",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )
                                  ],),
                                  Column(children: [
                                    Text(
                                        "Consumption",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "10",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )
                                  ],),
                                  


                                  
                                  
                                ],
                                
                                ),
                                
                              ),
                              Row(children: [
                                    Text(
                                        "Status",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(width: 22,),
                                      Container(

                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color:isActive!=1 ?  Colors.red:Colors.green,
                                          borderRadius: BorderRadius.circular(100)

                                          
                                          ),
                                      )
                                  ],),
                           
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
