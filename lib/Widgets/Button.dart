import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final Widget text;
  final void Function()? ontap;
  final Color color;
  const Button(
      {super.key,
      required this.text,
      required this.ontap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(100, 44),
        backgroundColor: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      ),
      onPressed: ontap,
      child: text,
    );
  }
}
