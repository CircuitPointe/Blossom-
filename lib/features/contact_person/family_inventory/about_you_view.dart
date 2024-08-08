import 'package:blossom/components/text_field.dart';
import 'package:blossom/datasource/contact_person_data/family_inventory_data.dart';
import 'package:blossom/features/contact_person/family_inventory/about_your_family_view.dart';
import 'package:blossom/features/contact_person/family_inventory/family_inventory_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../components/button.dart';
import '../../../navigation.dart';



class AboutYouView extends StatelessWidget {
  const AboutYouView({super.key});

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
        title: Text('About You', style: TextStyle(
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
                  Text('Name of your Community', style: TextStyle(
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
                        provider.communityName ?? 'Name of your community',
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
                  Text('Family Name', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    controller: provider.familyName,
                    hint: 'Family Name',
                    context: context,
                    autoFocus: false,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
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
                  Text('What is your level of education?', style: TextStyle(
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
                        provider.educationLevel ?? 'Level of Education',
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
                  Text('Are you aware of any community resources or support services available for Gender-Based Violence?', style: TextStyle(
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
                      groupValue: provider.isAwareOfResources,
                      onChanged: (e) {
                        if (e != null) {
                          provider.isAwareOfResources = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Have you personally experienced or witnessed any incident of violence, abuse or discrimination?', style: TextStyle(
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
                      groupValue: provider.hasExperiencedViolence,
                      onChanged: (e) {
                        if (e != null) {
                          provider.hasExperiencedViolence = e;
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: CustomButton(
                text: 'Next',
                context: context,
                onPressed: () {
                  Navigation.push(const AboutYourFamilyView(), context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
