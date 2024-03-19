import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor});
  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xff4EB7F2)),
        onPressed: () {},
        child: Text(
          'Add more details',
          style: AppStyles.styleSemiBold16.copyWith(color: textColor),
        ),
      ),
    );
  }
}
