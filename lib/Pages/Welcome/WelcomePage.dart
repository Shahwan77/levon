import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Core/Constants/ImageConstants.dart';
import '../../Routes/AppRoutes.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstants.Wlcm),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 290.h),
            child: DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.3,
              maxChildSize: 1,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 39.h),
                    child: Column(
                      children: [
                        Text(
                          "Educating for complexity",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.h),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Instant Accurate Communication between school \n "
                          "management staff,parents and students with the \n "
                          "                   Student-Alert portal and app",
                          style: TextStyle(
                            color: Color(0xffFDA215),
                          ),
                        ),
                        SizedBox(
                          height: 37.h,
                        ),
                        Container(
                          height: 40.h, // Set your desired height
                          width: 200.w, // Set your desired width
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.BottomBar);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Text(
                              "Get started",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.h,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
