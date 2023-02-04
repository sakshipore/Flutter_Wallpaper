import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerBox extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  ContainerBox({
    super.key,
    required this.height,
    required this.width,
    required this.text,
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
            spreadRadius: 5.r,
            blurRadius: 7.r,
            offset: Offset(0,3),
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
