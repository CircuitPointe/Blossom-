import 'package:blossom/datasource/contact_person_data/helpline_data.dart';
import 'package:blossom/features/helpline/helpline_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../navigation.dart';


class HelplineView extends StatelessWidget {
  const HelplineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helpline', style: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0xff783793)
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: Column(
          children: [
            Text(
              HelplineData.helplineText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
                wordSpacing: 2
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: HelplineData.helplines.length,
                itemBuilder: (ctx, index) {
                  var helpline = HelplineData.helplines[index];

                  return HelplineCard(helpline: helpline);
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
