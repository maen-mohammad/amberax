import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_amber/Features/auth/presentation/views/widgets/widgets_onbording/on_bording_list.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class SliderOnBording extends StatelessWidget {
  const SliderOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (val){
        print(val);
      },
                      itemCount: onBordingList.length,
                      itemBuilder: (context, i) => Container(
                        margin: EdgeInsets.only(top: 30),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Text(
                                  onBordingList[i].title!,
                                  style: const TextStyle(
                                      color:AppColor.kOrang,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width*.95,
                                     height: MediaQuery.of(context).size.height*.55,
                                  padding: EdgeInsets.all(20),
                                  child: Image.asset(
                                    onBordingList[i].image!,
                                    
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                 Container(
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  child: Text(
                                    onBordingList[i].body!,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: AppColor.kOrang,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ))
                          ;
  }
}