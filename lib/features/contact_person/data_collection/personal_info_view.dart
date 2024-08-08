import 'package:blossom/features/contact_person/data_collection/data_collection_provider.dart';
import 'package:blossom/features/contact_person/data_collection/gender_violence_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../components/button.dart';
import '../../../components/text_field.dart';
import '../../../datasource/contact_person_data/family_inventory_data.dart';
import '../../../navigation.dart';


class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<DataCollectionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigation.pop(context);
            },
            icon: Icon(Icons.chevron_left, size: 32.w, color: Colors.black,)
        ),
        title: Text('Personal Information', style: TextStyle(
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
                    Icon(Icons.radio_button_checked, size: 40.w, color: const Color(0xff783793)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.3, child: const Divider()),
                    Icon(Icons.radio_button_checked, size: 40.w, color: Colors.grey,),
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
                  Text('Phone Number', style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.phoneNumber,
                    hint: 'Phone Number',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Community', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff1D1B20).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButton<String>(
                      items: InventoryData.communities.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem<String>(
                            value: e,
                            child: Text(e, style: TextStyle(
                                fontSize: 24.sp
                            ),)
                        );
                      }).toList(),
                      onChanged: (e) {
                        provider.communityName = e;
                      },
                      hint: Text(
                        provider.communityName ?? '',
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.black
                        ),
                      ),
                      isExpanded: true,
                      underline: const SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Village', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.village,
                    hint: 'Village',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Gender', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.genderList.map<Widget>((e) {
                    return SizedBox(
                      height: 60.h,
                      child: RadioListTile.adaptive(
                        title: Text(e, style: TextStyle(
                            fontSize: 24.sp
                        ),),
                        value: e,
                        groupValue: provider.gender,
                        onChanged: (e) {
                          if (e != null) {
                            provider.gender = e;
                          }
                        },
                        activeColor: const Color(0xff783793),
                      ),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('How old are you', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.age,
                    hint: '',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('What is your education level?', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff1D1B20).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: DropdownButton<String>(
                      items: InventoryData.educationLevels.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem<String>(
                            value: e,
                            child: Text(e, style: TextStyle(
                                fontSize: 24.sp
                            ),)
                        );
                      }).toList(),
                      onChanged: (e) {
                        provider.educationLevel = e;
                      },
                      hint: Text(
                        provider.educationLevel ?? '',
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.black
                        ),
                      ),
                      isExpanded: true,
                      underline: const SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Are you married?', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.defaultList.map<Widget>((e) {
                    return RadioListTile.adaptive(
                      title: Text(e, style: TextStyle(
                          fontSize: 24.sp
                      ),),
                      value: e,
                      groupValue: provider.maritalStatus,
                      onChanged: (e) {
                        if (e != null) {
                          provider.maritalStatus = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('What do you do for a living?', style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.occupation,
                    hint: '',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: CustomButton(
                text: 'Next',
                context: context,
                onPressed: () {
                  Navigation.push(const GenderViolenceForm(), context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
