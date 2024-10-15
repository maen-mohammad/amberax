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
              textDirection: TextDirection.rtl,
              readOnly: bol,
              onChanged: (value) {
                onTap;
              },
              cursorColor: AppColor.kGrey,
              keyboardType: type,
              obscureText: false,
              decoration: InputDecoration(
                
                focusColor: AppColor.kGrey,
                
                 
                  labelText: textLabel,
                  hintText: textHint,
                  hintTextDirection: TextDirection.rtl,
                  
                  
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSurffixIcon(
                    svgIcon: svgIcons,
                    
                  ),
                  contentPadding: EdgeInsets.only(left: 30,top: 10,bottom: 10),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 16,
                      color: Colors.grey,
                      
                  fontWeight: FontWeight.w600,
                      
                      
                      
                  )),
                  
              style: TextStyle(

                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          );
  }
}