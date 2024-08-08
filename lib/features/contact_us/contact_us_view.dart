import 'package:blossom/features/contact_us/contact_us_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../components/button.dart';



class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ContactUsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0xff783793)
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(32.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/contact_us.png', width: 304.w, fit: BoxFit.fitWidth,),
              SizedBox(
                height: 32.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Name',
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
                controller: provider.name,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff646464).withOpacity(0.1),
                    border: InputBorder.none
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
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
                controller: provider.name,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff646464).withOpacity(0.1),
                    border: InputBorder.none
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
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
                controller: provider.name,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff646464).withOpacity(0.1),
                    border: InputBorder.none
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Message',
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
                controller: provider.name,
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
      ),
    );
  }
}
