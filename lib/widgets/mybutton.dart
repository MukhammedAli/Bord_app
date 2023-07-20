import 'package:bord_project/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';



class MyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const MyButton({this.onPressed, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
    width: 343,
    height: 64,
     child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: ApplicationPaddings.vertical,
        backgroundColor: Color.fromRGBO(10, 171, 57, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
      ),
      onPressed: onPressed, child: Text(
      text, style: TextStyle(
        fontSize: 16,
   
      ),
     )),
   );
}
}

