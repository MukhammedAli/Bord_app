import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarouselWithout extends StatelessWidget {
  CarouselWithout({super.key, required this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      width: double.infinity,
      child: PageView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 161,
              width: double.infinity,
              child: Image.asset(
                list[index],
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}



