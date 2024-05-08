import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:levon/Utils/Dimensions.dart';

import '../../Core/Constants/ImageConstants.dart';
import '../../Widgets/Button.dart';
import '../../Widgets/Circular.dart';
import '../../Widgets/CustomBar.dart';
import '../../Widgets/CustomContainer.dart';
import '../../Widgets/CustomDrawer.dart';
import '../../Widgets/CustomDropDown.dart';
import '../BottomBar/Controller/BottomNavigationBarrController.dart';

class HomePage extends StatelessWidget {
  final BottomNavigationBarrController _splashcontroller =
      Get.put(BottomNavigationBarrController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final List<String> lists = [
      "Malappuram",
      "Kozhikode",
      "Wayanad",
      "Kannur",
    ];
    List<double> weeklySummery = [
      55.40,
      38.30,
      30.42,
      30.50,
      48.20,
      88.99,
      90.10,
    ];
    String initialselect = lists.first;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Home",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
                child: Text(
                  "Hello Maqsud!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.h),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 160.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 18.h,
                          ),
                          Text(
                            "Attendance",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Circular(
                            color: Colors.white,
                            text: '80%',
                            color2: Colors.greenAccent,
                            color3: Colors.white,
                            Value: 0.6,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Button(
                            text: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "View",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ],
                            ),
                            color: Colors.white,
                            ontap: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 160.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 18.h,
                          ),
                          Text(
                            "Fee",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Circular(
                            color: Colors.black,
                            text: '60%',
                            color2: Colors.yellowAccent,
                            Value: 0.5,
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Button(
                            text: Text(
                              "Pay Fee",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            color: Colors.black,
                            ontap: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Container(
                  height: 220.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Homework",
                              style: TextStyle(
                                  fontSize: 18.h, fontWeight: FontWeight.w500),
                            ),
                            CustomDropdown(),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                          child: CustomBar(
                            weeklySummary: weeklySummery,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'School Updates',
                      style: TextStyle(
                          fontSize: 16.h, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
                child: Row(
                  children: [
                    CustomContainer(
                      image: ImageConstants.News,
                      text: "News",
                      Boxclr: Colors.greenAccent.shade100,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    CustomContainer(
                      image: ImageConstants.Events,
                      text: "Events",
                      Boxclr: Colors.pink.shade100,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    CustomContainer(
                      image: ImageConstants.Bulletin,
                      text: "Bulletin",
                      Boxclr: Colors.deepPurpleAccent.shade100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
