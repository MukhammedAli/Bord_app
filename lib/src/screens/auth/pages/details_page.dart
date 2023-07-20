import 'package:auto_route/auto_route.dart';
import 'package:bord_project/src/router/router.dart';
import 'package:bord_project/widgets/carousel.dart';
import 'package:bord_project/widgets/carousel_without_rep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<String> list = [
    'assets/carousel.jpg',
    'assets/carousel.jpg',
    'assets/carousel.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: CarouselWithout(list: list),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Акция: Пиццы 1+1',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Cafe Bilhares',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  Text(
                    'Дата проведения',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '18.10 - 20.10',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      'Описание',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                        'Закажи одну пиццу и получи вторую бесплатно. Lorem ipsum typesetting has been the industry dummy text, it has experience since the previous age'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        context.router.push(PlacesPageRoute());
                      });
                      // setState() {
                      //   context.router.push(DetailsPageRoute());
                      // }
                    },
                    child: Card(
                      child: Container(
                        height: 92,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cafe Bilhares',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                  Text('Итальянская')
                                ],
                              ),
                            ),
                            Image.asset("assets/astercafe.jpg"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
