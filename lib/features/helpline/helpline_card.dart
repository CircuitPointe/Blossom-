import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../datasource/contact_person_data/helpline_model.dart';


class HelplineCard extends StatelessWidget {
  final Helpline helpline;

  const HelplineCard({super.key, required this.helpline});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          helpline.name,
          style: TextStyle(
            color: const Color(0xff783793),
            fontSize: 28.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          padding: EdgeInsets.all(16.0.w),
          margin: EdgeInsets.only(bottom: 40.h),
          decoration: BoxDecoration(
            color: const Color(0xff783793),
            borderRadius: BorderRadius.circular(12.r)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.white, size: 24.h,),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Text(
                        helpline.phone,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: Colors.white,
                            letterSpacing: 1.2,
                            wordSpacing: 2
                        ),
                      ),
                    ),
                    if (helpline.email.isNotEmpty)
                      Chip(
                          label: Text(
                            "EMAIL",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff783793),
                            ),
                          )
                      ),
                  ],
                ),
              ),
              if (helpline.email != "")
                ...[
                  const Divider(color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
                    child: Row(
                      children: [
                        Icon(Icons.email, color: Colors.white, size: 24.h,),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                          child: Text(
                            helpline.email,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                color: Colors.white,
                                letterSpacing: 1.2,
                                wordSpacing: 2
                            ),
                          ),
                        ),
                        if (helpline.email.isNotEmpty)
                          Chip(
                              label: Text(
                                "EMAIL",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff783793),
                                ),
                              )
                          ),
                      ],
                    ),
                  ),
                ],
              const Divider(color: Colors.white,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on, color: Colors.white, size: 24.h,),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(
                      child: Text(
                        helpline.location,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: Colors.white,
                            letterSpacing: 1.2,
                            wordSpacing: 2
                        ),
                      ),
                    )
                  ],
                ),
              ),
              if (helpline.services != "")
                ...[
                  const Divider(color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, color: Colors.white, size: 24.h,),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                          child: Text(
                            helpline.services,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                color: Colors.white,
                                letterSpacing: 1.2,
                                wordSpacing: 2
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]

            ],
          ),
        ),
      ],
    );
  }
}