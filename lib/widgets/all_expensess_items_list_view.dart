import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/models/all_expensess_item_model.dart';
import 'package:rsponsive_dashbaord/utlis/app_images.dart';
import 'package:rsponsive_dashbaord/widgets/all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = const [
    AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: Assets.imagesExpences,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    )
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        // children: items
        //     .map((e) =>
        //         Expanded(child: AllExpensessItem(allExpensessItemModel: e)))
        //     .toList(),
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      return Expanded(
        child: GestureDetector(
          onTap: () {
            updateIndex(index);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpensessItem(
              allExpensessItemModel: item,
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      );
    }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
