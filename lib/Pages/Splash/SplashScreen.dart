import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Core/Constants/ImageConstants.dart';
import 'Controller/SplashController.dart';

class SplashScreen extends StatelessWidget {
  final SplashController _splashcontroller=Get.put(SplashController());
   SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstants.ImgSplash), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 430.h),
            child: Center(
              child: Text(
                "Edusys",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                    color: Colors.white.withOpacity(.9)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
