import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:levon/Routes/AppRoutes.dart';
import 'CustomListTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 70.h, right: 130.w),
              child: GestureDetector(
                child: Icon(Icons.menu, size: 30.h),
                onTap: () {
                  Scaffold.of(context).closeDrawer();
                },
              ),
            ),
          ),
          // Reusable ListTile widget
          CustomListTile(
            icon: Icons.info_outline,
            title: 'About us',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.flash_on,
            title: 'Whats new',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.av_timer,
            title: 'Listening history',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.settings,
            title: 'Settings and privacy',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
