import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomeMenuItem extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool isColored;

  const HomeMenuItem({super.key, this.icon, required this.text, required this.isColored});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: isColored ? Colors.purple : Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (icon != null)
              ...[
                Icon(
                  icon,
                  size: 40.w,
                  color: isColored ? Colors.white : Colors.black,
                ),
                SizedBox(height: 10.h)
              ],
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.sp,
                color: isColored ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
