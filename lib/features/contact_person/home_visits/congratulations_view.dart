import 'package:blossom/components/button.dart';
import 'package:blossom/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CongratulationsView extends StatelessWidget {
  final String title;
  final String desc;

  const CongratulationsView({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp,
                  color: const Color(0xff783793)
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Image.asset('assets/shiny_success.png', width: 450.w,),
              SizedBox(
                height: 32.h,
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 64.h,
              ),
              CustomButton(
                text: 'Go Back Home',
                context: context,
                onPressed: () {
                  Navigation.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
