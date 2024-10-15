import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),

      decoration: BoxDecoration(
        color: Color(0xFFFA3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        textAlign: TextAlign.left,
        TextSpan(
          text: 'Amber\n',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: "\nApp to Management System Ambers",
              style: TextStyle(
                fontSize: (15),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
