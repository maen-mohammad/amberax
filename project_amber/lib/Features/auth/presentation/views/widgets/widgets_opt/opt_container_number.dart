import 'package:flutter/material.dart';

class OptConatinerNumber extends StatelessWidget {
  const OptConatinerNumber({super.key});

  final int i = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
            width: 60,
            child: TextFormField(
              maxLength: i,
              autofocus: true,
              obscureText: true,
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
              onChanged: (value) {
                
              },
            )));
  }
}
