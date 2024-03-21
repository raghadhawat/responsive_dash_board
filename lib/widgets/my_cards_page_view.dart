import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/widgets/my_card.dart';

class MyCardsPageview extends StatelessWidget {
  const MyCardsPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const MyCard();
      },
    );
  }
}
