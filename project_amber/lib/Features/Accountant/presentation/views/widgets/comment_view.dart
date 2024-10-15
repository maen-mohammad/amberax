import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/Subscriber/presentation/views/widgets/widgets_body_subscriber/text_form.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_router.dart';

class CommentsView extends StatelessWidget {
  const CommentsView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(
          "Comments",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 20),
          //   padding: EdgeInsets.symmetric(horizontal: 3),
          //   decoration: BoxDecoration(
              
          //   color: AppColor.kOrang,
          //     borderRadius: BorderRadius.circular(20)),
          //   child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: AppColor.kWhite,size: 20,)))
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,),
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
                                      width: MediaQuery.of(context).size.width * 0.80,
                                      child: ElevatedButton.icon(onPressed: (){}, 
                                      label: Text("",style: TextStyle(color: AppColor.kOrang,),),
                                      icon: Icon(Icons.handshake,color: AppColor.kOrang,),
                                      
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.kOrang,
        splashColor: AppColor.kWhite,
        
        onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          
          content: TextForm(
            bol: false,
            onTap: (){},
            textHint: "add comment...",
            svgIcons: "",
            type: TextInputType.text,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => GoRouter.of(context).pop( 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Add'),
              child: const Text('OK'),
            ),
          ],
        ),
          ),
          
        
        child: Icon(Icons.add,color: AppColor.kWhite,size: 35,),),
    );
  }
}
