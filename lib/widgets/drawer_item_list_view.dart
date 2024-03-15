import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/models/drawer_item_model.dart';
import 'package:rsponsive_dashbaord/utlis/app_images.dart';
import 'package:rsponsive_dashbaord/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransiction),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
