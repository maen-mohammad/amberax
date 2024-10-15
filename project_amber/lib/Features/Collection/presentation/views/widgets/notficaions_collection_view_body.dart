import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_amber/Features/component/last_line.dart';
import 'package:project_amber/core/utlites/app_color.dart';
import 'package:project_amber/core/utlites/app_images.dart';

class NotficaionsCollectionViewBody extends StatelessWidget {
  const NotficaionsCollectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الأشعارات",
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
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        AppImageAsset.onBordingSeven,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  for (int i = 0; i < 10; i++)
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width * .93,
                            child: Stack(children: [
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.all(2),
                                padding: EdgeInsets.only(
                                    right: 20, top: 10, bottom: 20, left: 60),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 245, 241, 241),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text.rich(
                                  textAlign: TextAlign.right,
                                  TextSpan(
                                    text:
                                        ' عرض جديعرض جديعرض جديعرض جديعرض جديعرض جديعرض جديد ',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.kOrang),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 5,
                                left: 5,
                                child: PopupMenuButton(
                                  padding: EdgeInsets.all(5),
                                  icon: Icon(
                                    Icons.settings,
                                    size: 30,
                                    color: AppColor.kOrang,
                                  ),
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                        value: 2,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text("حذف"),
                                        )),
                                  ],
                                ),
                              )
                            ])),
                      ),
                    ),
                    LastLine()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
