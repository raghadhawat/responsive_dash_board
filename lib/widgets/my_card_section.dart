import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';
import 'package:rsponsive_dashbaord/widgets/dots_indicator.dart';
import 'package:rsponsive_dashbaord/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageview(),
        SizedBox(
          height: 20,
        ),
        DotsIndicator()
      ],
    );
  }
}
