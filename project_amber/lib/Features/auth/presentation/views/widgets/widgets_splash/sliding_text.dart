import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slindingAnmation,
  });

  final Animation<Offset> slindingAnmation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      
      animation: slindingAnmation,
      builder: (context,_) {
        return SlideTransition(
          position: slindingAnmation,
          child: const Text("معاً نحو الطاقة البديلة ",style: TextStyle(
            color: Colors.white,
            fontSize: 20
            ),
            textAlign: TextAlign.center,
          
            ),
        );
      }
    );
  }
}