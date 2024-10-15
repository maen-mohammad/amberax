import 'package:flutter/material.dart';
import 'package:project_amber/Features/component/custom_surffix.dart';
import 'package:project_amber/core/utlites/app_color.dart';

class TextForm extends StatelessWidget {
  

  

  final String? textLabel;
  final String? textHint;
  final String svgIcons;
  final bool bol;
  
  final Function() onTap;
  
  final TextInputType type;

  const TextForm({super.key, this.textLabel, this.textHint,required this.svgIcons, required this.onTap, required this.type, required this.bol});


  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              readOnly: bol,
              onChanged: (value) {
                onTap;
              },
              cursorColor: AppColor.kGrey,
              keyboardType: type,
              obscureText: false,
              decoration: InputDecoration(
                
                focusColor: AppColor.kGrey,
                
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: AppColor.kOrang,width: 2),
                      gapPadding: 10,
                    ),
                  labelStyle: TextStyle(color:  AppColor.kOrang,fontSize: 20),
                  labelText: textLabel,
                  hintText: textHint,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSurffixIcon(
                    svgIcon: svgIcons,
                    
                  ),
                  contentPadding: EdgeInsets.only(left: 30,top: 10,bottom: 10),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 12,
                      color: Colors.grey
                      
                  )),
                  
              style: TextStyle(

                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          );
  }
}