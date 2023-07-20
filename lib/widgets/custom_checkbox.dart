import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return   Center(
          child: InkWell(
        onTap: () {
          setState(() {
            _value = !_value;
          });
        },
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: _value
                ? Icon(
                    Icons.check,
                    size: 20.0,
                    color: Colors.green,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 20.0,
                    color: Colors.green,
                  ),
          ),
        ),
      ));
  }
}