import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerBox extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final double spreadRadius;
  final double blurrRadius;
  ContainerBox({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.spreadRadius,
    required this.blurrRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: spreadRadius.r,
            blurRadius: blurrRadius.r,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
