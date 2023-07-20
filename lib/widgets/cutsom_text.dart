import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomText extends StatelessWidget {
  final String? txt; 
  const CustomText({this.txt, super.key});


  @override
  Widget build(BuildContext context) {
    return Text(txt!, 
      style: TextStyle(fontSize: 24),
    );
  }
}