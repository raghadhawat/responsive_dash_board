import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/models/drawer_item_model.dart';
import 'package:rsponsive_dashbaord/models/user_info_model.dart';
import 'package:rsponsive_dashbaord/utlis/app_images.dart';
import 'package:rsponsive_dashbaord/widgets/active_and_inactive_drawer_item.dart';
import 'package:rsponsive_dashbaord/widgets/drawer_item_list_view.dart';
import 'package:rsponsive_dashbaord/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSetting2,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
