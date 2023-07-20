import 'package:bord_project/widgets/carousel_of_places.dart';
import 'package:bord_project/widgets/places_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PlacesPage extends StatelessWidget {
  const PlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselOfPlaces(),
    );
  }
}
