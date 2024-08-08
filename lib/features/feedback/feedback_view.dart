import 'package:blossom/features/feedback/feedback_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../components/button.dart';



class FeedbackView extends StatelessWidget {
  const FeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<FeedbackProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback', style: TextStyle(
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
              provider.text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
                wordSpacing: 2
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Feedback Message',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            TextField(
              controller: provider.controller,
              maxLines: 5,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff646464).withOpacity(0.1),
                border: InputBorder.none
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: CustomButton(
                text: 'Submit',
                context: context,
                onPressed: () {
                  // save feedback
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
