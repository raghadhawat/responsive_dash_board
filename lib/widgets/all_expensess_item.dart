import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/models/all_expensess_item_model.dart';
import 'package:rsponsive_dashbaord/widgets/in_active_and_active_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key,
      required this.allExpensessItemModel,
      required this.isSelected});
  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel)
        : InActiveAllExpensessItem(
            allExpensessItemModel: allExpensessItemModel,
          );
  }
}
