import 'package:auto_route/auto_route.dart';
import 'package:bord_project/src/router/router.dart';
import 'package:bord_project/src/screens/auth/pages/booking_page.dart';
import 'package:bord_project/src/screens/auth/pages/bookmark_page.dart';
import 'package:bord_project/src/screens/auth/pages/notifications_page.dart';
import 'package:bord_project/src/screens/auth/pages/search_page.dart';
import 'package:bord_project/widgets/carousel.dart';
import 'package:bord_project/widgets/carousel_loading.dart';
import 'package:bord_project/widgets/carousel_of_cards.dart';
import 'package:bord_project/widgets/carousel_of_places.dart';
import 'package:bord_project/widgets/carousel_titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;

  List<String> list = [
    'assets/carousel.jpg',
    'assets/carousel.jpg',
    'assets/carousel.jpg'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 108,
                  height: 26,
                  child: Image.asset('assets/BORD.png'),
                ),
                Row(
                  children: [
                    Text(
                      '1000B',
                      style: TextStyle(fontSize: 15),
                    ),
                    Container(
                        width: 53,
                        height: 53,
                        child: Icon(Icons.supervised_user_circle)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 250,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            text: 'Резерв',
                          ),
                          Tab(
                            text: 'Новости/Акций ',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Image.asset('assets/location.png'),
                      Text(
                        'Almaty',
                        style: TextStyle(fontSize: 16),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: double.infinity,
                height: 1000,
                child: TabBarView(controller: _tabController, children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Carousel(list: list),
                        CarouselTitles(title: 'Открытые сейчас'),
                        CarouselOfPlaces(),
                        CarouselTitles(title: 'Популярные заведения'),
                        CarouselOfPlaces(),
                        CarouselTitles(title: 'Лаундж бар'),
                        CarouselOfPlaces(),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          context.router.push(DetailsPageRoute());
                        });
                      },
                      child: CarouselOfCards()),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
