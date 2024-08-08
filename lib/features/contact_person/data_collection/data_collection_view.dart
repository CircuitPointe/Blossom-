import 'package:blossom/features/contact_person/data_collection/personal_info_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/button.dart';
import '../../../navigation.dart';



class DataCollectionView extends StatelessWidget {
  const DataCollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigation.pop(context);
            },
            icon: Icon(Icons.chevron_left, size: 32.w, color: Colors.black,)
        ),
        title: Text('Data Collection', style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff783793)
        ),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset('assets/background_plain.png', width: double.infinity, height: double.infinity, fit: BoxFit.fill,),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 64.w),
              child: Column(
                children: [
                  Image.asset('assets/data_collection.png', width: 600.w, fit: BoxFit.fitWidth,),
                  SizedBox(
                    height: 32.h,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        "This survey is for research purpose only. Your identity will not be revealed to others without your express consent. You are free to decline from answering any of the questions.",
                        textAlign: TextAlign.start, style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          height: 2.1
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: CustomButton(
                      text: 'Get Started',
                      context: context,
                      onPressed: () {
                        Navigation.pop(context);
                        // go to personal information view
                        Navigation.push(const PersonalInfoView(), context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
