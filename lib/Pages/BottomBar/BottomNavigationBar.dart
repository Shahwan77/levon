import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:levon/Pages/Assignment/AssignmentPage.dart';
import 'package:levon/Pages/BottomBar/HomeWork.dart';

import '../../Core/Constants/ImageConstants.dart';
import '../Home/HomePage.dart';
import 'Controller/BottomNavigationBarrController.dart';
import 'FeePage.dart';

class BottomNavigationBarr extends GetView<BottomNavigationBarrController> {
   BottomNavigationBarr({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Widget> Pages = [
      HomePage(),
      AssignmentPage(),
      HomeWork(),
      FeePage(),
    ];

    return Scaffold(
      body: Obx(() => Pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.selectedIndex.value,
          onTap: (value) {
            controller.selectedIndex.value = value;
          },
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedItemColor: Colors.greenAccent,
          selectedIconTheme: IconThemeData(color: Colors.greenAccent),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _buildIcon(
                ImageConstants.Home,
                ImageConstants.Home,
                controller.selectedIndex.value == 0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                ImageConstants.Assgnmt,
                ImageConstants.Assgnmt,
                controller.selectedIndex.value == 1,
              ),
              label: 'Assignment',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                ImageConstants.Homwrk,
                ImageConstants.Homwrk,
                controller.selectedIndex.value == 2,
              ),
              label: 'Homework',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                ImageConstants.Fee,
                ImageConstants.Fee,
                controller.selectedIndex.value == 3,
              ),
              label: 'Pay Fee',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(String normalImage, String selectedImage, bool isSelected) {
    return isSelected
        ? ColorFiltered(
      colorFilter: ColorFilter.mode(Colors.greenAccent, BlendMode.srcIn),
      child: Image.asset(
        selectedImage,
        width: 24.w,
        height: 24.h,
      ),
    )
        : Image.asset(
      normalImage,
      width: 26.w,
      height: 26.h,
    );
  }
}