import 'package:blossom/features/onboarding/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'indicator.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    super.key,
  });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int page = 0;
  final screenWidth = ScreenUtil().screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: screenWidth * 0.8,
          child: PageView(
            onPageChanged: (value) {
              setState(() {
                page = value;
              });
            },
            children: [
              CarouselPage(
                title: 'Our platform educates, empowers, and enables action against Gender-Based Violence.',
                image: 'assets/ob_one.png',
              ),
              CarouselPage(
                title:
                    'Recognize signs and learn about impacts, prevention measures, and support services.',
                image: 'assets/ob_two.png',
              ),
              CarouselPage(
                title:
                'Explore self-care tips, advocacy resources, and skills to make a difference',
                image: 'assets/ob_four.png',
              ),
              CarouselPage(
                title: 'Share experience, seek advice, and offer support in a safe, inclusive environment.',
                image: 'assets/ob_three.png',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 16.h,
          child: Indicator(
            length: 4,
            page: page,
          ),
        ),
      ],
    );
  }
}
