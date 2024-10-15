import 'package:flutter/material.dart';
import 'package:project_amber/core/utlites/app_color.dart';



class DefaultButton extends StatelessWidget {

  const DefaultButton({
    Key? key,
    this.text,
    required this.onTap, this.color, this.width,

  }) : super(key: key);
  final String? text;
  final Function() onTap;
  
  final Color? color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width != null ?  width:MediaQuery.of(context).size.width*0.8,
      height: 56,
      child: TextButton(
        
        style: TextButton.styleFrom(
          
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          
          backgroundColor: AppColor.kOrang,
          //color: currentPage == index ? FirstColor : Color(0xFFD8D8D8),

        ),
        onPressed: onTap,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
