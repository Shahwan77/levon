import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final Color? Boxclr;
  final Color? iconclr;
  final String?image;
  final String? text;
  const CustomContainer({super.key, this.Boxclr, this.iconclr, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return     Container(
      height: 90.h,
      width: 100.w,
      decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.h,
              width: 60.w,
              decoration:BoxDecoration(
                  color:Boxclr,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(image!,color: iconclr,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text!,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(child: Text("6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))))
              ],
            ),
          )
        ],
      ),
    );
  }
}