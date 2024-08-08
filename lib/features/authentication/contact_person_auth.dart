import 'package:blossom/components/text_field.dart';
import 'package:blossom/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/button.dart';
import '../contact_person/home/home.dart';



class ContactPersonAuth extends StatefulWidget {
  const ContactPersonAuth({super.key});

  @override
  State<ContactPersonAuth> createState() => _ContactPersonAuthState();
}

class _ContactPersonAuthState extends State<ContactPersonAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigation.pop(context);
        }, icon: const Icon(Icons.chevron_left, size: 32, color: Colors.black,),)
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/enter_code.png', width: 512.w,),
              Text('Blossom', style: TextStyle(
                fontSize: 64.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff5A1975)
              ),),
              SizedBox(
                height: 24.h,
              ),
              Text('Educate. Empower. Break the Cycle.', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w400,
              ),),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                width: 516.w,
                child: CustomTextField(
                  hint: "Enter code",
                  context: context,
                  autoFocus: false,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                width: 516.w,
                child: CustomButton(
                  text: 'Submit',
                  context: context,
                  onPressed: () {
                    Navigation.push(const Home(), context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
