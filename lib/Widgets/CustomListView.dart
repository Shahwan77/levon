import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:levon/Utils/Dimensions.dart';

import '../Core/Constants/ImageConstants.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 340.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                  child: Container(
                    height: 50.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding:  EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                      child: Image.asset(
                        ImageConstants.Atom,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 126.w, top: 10.h),
                      child: Text(
                        "Theoretical Physics",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.h,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "The derivation of the quantum information no hiding theorem",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 170.w),
                      child: Row(
                        children: [
                          Image.asset(
                            ImageConstants.Green,
                            height: 15.h,
                            width: 30.w,
                          ),
                          Text(
                            "Download pdf",
                            style: TextStyle(
                                color: Colors.greenAccent.shade700,
                                fontSize: 8.h),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 340.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                  child: Container(
                    height: 50.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding:  EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                      child: Image.asset(
                        ImageConstants.Shells,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 160.w, top: 10.h),
                      child: Text(
                        "Mathematics",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.h,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Solve all the mathematics problems with proper equations ",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 170.w),
                      child: Row(
                        children: [
                          Image.asset(
                            ImageConstants.Blue,
                            height: 15.h,
                            width: 30.w,
                          ),
                          Text(
                            "Download pdf",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent.shade700,
                                fontSize: 8.h),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 340.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                  child: Container(
                    height: 50.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding:  EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                      child: Image.asset(
                        ImageConstants.Weight,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 120.w, top: 10.h),
                      child: Text(
                        "Physical Exercise",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.h,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "How improve your healthy stay at home, write a article on it",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 170.w),
                      child: Row(
                        children: [
                          Image.asset(
                            ImageConstants.Pink,
                            height: 15.h,
                            width: 30.w,
                          ),
                          Text(
                            "Download pdf",
                            style: TextStyle(
                                color: Colors.pink.shade700,
                                fontSize: 8.h),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
