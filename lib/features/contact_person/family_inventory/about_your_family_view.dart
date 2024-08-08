import 'package:blossom/features/contact_person/family_inventory/inventory_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../components/button.dart';
import '../../../components/text_field.dart';
import '../../../navigation.dart';
import 'family_inventory_provider.dart';


class AboutYourFamilyView extends StatelessWidget {
  const AboutYourFamilyView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<FamilyInventoryProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigation.pop(context);
            },
            icon: Icon(Icons.chevron_left, size: 32.w, color: Colors.black,)
        ),
        title: Text('About Your Family', style: TextStyle(
            color: const Color(0xff783793),
            fontSize: 32.sp,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(32.0.w),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  children: [
                    Icon(Icons.radio_button_checked, size: 40.w, color: Colors.grey),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.3, child: const Divider()),
                    Icon(Icons.radio_button_checked, size: 40.w, color: const Color(0xff783793)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Expanded(child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView(
                children: [
                  Text('How many people live in your household', style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.numOfPeople,
                    hint: '4',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('What are the ages of everyone living in your household?', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.ages.keys.map((age) {
                    return CheckboxListTile(
                      title: Text(age, style: TextStyle(
                          fontSize: 24.sp
                      )),
                      value: provider.ages[age],
                      onChanged: (bool? newValue) {
                        provider.setAge(age, newValue ?? false);
                      },
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('How many men or boys live in your house?', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.numOfMen,
                    hint: 'Family Name',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('How many women or girls live in your house?', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.numOfWomen,
                    hint: 'Family Name',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Are there any extended family members or other relatives living with you?', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.defaultList.map<Widget>((e) {
                    return RadioListTile.adaptive(
                      title: Text(e, style: TextStyle(
                          fontSize: 24.sp
                      )),
                      value: e,
                      groupValue: provider.extendedFamily,
                      onChanged: (e) {
                        if (e != null) {
                          provider.extendedFamily = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('How often do you have family meetings?', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.meetingRoutine.map<Widget>((e) {
                    return RadioListTile.adaptive(
                      title: Text(e, style: TextStyle(
                          fontSize: 24.sp
                      )),
                      value: e,
                      groupValue: provider.meetingFrequency,
                      onChanged: (e) {
                        if (e != null) {
                          provider.meetingFrequency = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                ],
              ),
            )),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: 'Back',
                  context: context,
                  outlined: true,
                  onPressed: () {
                    Navigation.pop(context);
                  },
                ),
                CustomButton(
                  text: 'Save',
                  context: context,
                  onPressed: () {
                    // save data

                    // clear data

                    // go to success
                    Navigation.pop(context);
                    Navigation.push(const InventorySuccessView(), context);
                  },
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
