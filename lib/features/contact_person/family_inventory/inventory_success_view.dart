import 'package:blossom/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/button.dart';



class InventorySuccessView extends StatelessWidget {
  const InventorySuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/success.png', height: 224.w, width: 224.w,),
              SizedBox(
                height: 32.h,
              ),
              Text('Congrats', style: TextStyle(
                fontSize: 64.sp,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(
                height: 32.h,
              ),
              Text('Inventory Successfully Submitted', style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                child: CustomButton(
                  text: 'Go Home',
                  context: context,
                  onPressed: () {
                    Navigation.pop(context);
                    Navigation.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                child: CustomButton(
                  text: 'Take Another Inventory',
                  context: context,
                  onPressed: () {
                    Navigation.pop(context);
                  },
                  outlined: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
