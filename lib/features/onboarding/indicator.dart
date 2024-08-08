import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Indicator extends StatelessWidget {
  final int length;
  final int page;
  const Indicator({
    super.key,
    required this.length,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        length,
            (index) => AnimatedContainer(
          duration: const Duration(
            milliseconds: 300,
          ),
          height: 16.h,
          width: index == page ? 44.w : 16.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: index == page ? const Color(0xFF783793) : const Color(0xFFEAECF0),
            shape: BoxShape.rectangle,
          ),
          margin: EdgeInsets.only(right: 6.r),
        ),
      ),
    );
  }
}