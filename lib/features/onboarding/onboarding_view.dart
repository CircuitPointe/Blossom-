import 'package:blossom/features/authentication/contact_person_auth.dart';
import 'package:blossom/navigation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/button.dart';
import 'carousel.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 36.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to Blossom', style: TextStyle(
                fontSize: 64.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff5A1975)
              ),),
              SizedBox(
                height: 24.h,
              ),
              const Expanded(
                child: Carousel(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.r,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 516.w,
                      child: CustomButton(
                        text: 'Get Started',
                        context: context,
                        onPressed: () {

                        },
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
                        children: [
                          const TextSpan(
                            text: 'Already have an account? ',
                          ),
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              color: Color(0xff783793),
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              // Single tapped.
                            }
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextButton(
                      onPressed: () {
                        // go to contact person view
                        Navigation.push(const ContactPersonAuth(), context);
                      },
                      child: Text(
                        'I have a code',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}