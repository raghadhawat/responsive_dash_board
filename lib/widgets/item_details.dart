import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/models/item_details_model.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';

class Itemdetails extends StatelessWidget {
  const Itemdetails({
    super.key,
    required this.itemDetailsModel,
  });
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailsModel.color,
        ),
      ),
    );
  }
}
