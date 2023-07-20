import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarouselTitles extends StatelessWidget {

  final String title;

  CarouselTitles({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
              Text(title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), TextButton(
                onPressed: ()=> print('Hi'),
                child: Text('Показать все', style: TextStyle(fontSize: 15),),)
            ],
            ),
          );
  }
}