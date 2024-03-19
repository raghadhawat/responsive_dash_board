import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';
import 'package:rsponsive_dashbaord/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer name',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}