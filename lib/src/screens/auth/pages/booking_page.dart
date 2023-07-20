import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Row(
              children: [
                Text('Write it here'), 
                Text('Write it to the next part'),
                Text('Complete the layout of this page!'),
              ],
            )
          ],
        )
      ],
    );
  }
}
