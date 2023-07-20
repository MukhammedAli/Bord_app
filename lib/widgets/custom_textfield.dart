import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomTextField extends StatelessWidget {
  
  final String label;

  final TextEditingController controller;

  const CustomTextField({super.key, required this.label, required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return 
    TextField(
      controller: controller,
      decoration: InputDecoration(
      labelStyle: const TextStyle(
        color: Color.fromRGBO(195, 195, 195, 1)
      ), 
      filled: true, fillColor: const Color.fromRGBO(254, 254, 254, 1), 
      border: InputBorder.none, hintText: label));
  }
}

/*
TextFormField(
      obscureText: label == 'Пароль' ? true : false,
      cursorColor: Color.fromRGBO(0, 0, 0, 1),
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(254, 254, 254, 1),
        filled: true,
        labelText: label, 
        floatingLabelStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1),),
        labelStyle: const TextStyle(
          color: Color.fromRGBO(195, 195, 195, 1)
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD8D8D8)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff828282)),
        )
      ), 
    
    );
*/
