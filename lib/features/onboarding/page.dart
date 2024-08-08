import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CarouselPage extends StatelessWidget {
  final String title, image;
  final screenWidth = ScreenUtil().screenWidth;
  CarouselPage({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: screenWidth * 0.6,
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            width: screenWidth * 0.8,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w400,
                height: 1.4
              ),
            ),
          ),
        ],
      ),
    );
  }
}
