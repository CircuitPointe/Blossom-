import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../components/button.dart';
import '../../../navigation.dart';
import '../family_inventory/inventory_success_view.dart';
import 'data_collection_provider.dart';



class GenderViolenceForm extends StatelessWidget {
  const GenderViolenceForm({super.key});

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
        title: Text('About Gender Violence', style: TextStyle(
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
                  Text('Have you ever heard of Female Genital Mutilation/Cutting (FGM/C)?', style: TextStyle(
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
                      groupValue: provider.isAwareOfFGM,
                      onChanged: (e) {
                        if (e != null) {
                          provider.isAwareOfFGM = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Have you ever heard of violence between partners (IPV)?', style: TextStyle(
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
                      groupValue: provider.isAwareOfIPV,
                      onChanged: (e) {
                        if (e != null) {
                          provider.isAwareOfIPV = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('How much do you know about FGM and IPV? (Select one option)', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.howMuch.map<Widget>((e) {
                    return RadioListTile.adaptive(
                      title: Text(e, style: TextStyle(
                          fontSize: 24.sp
                      )),
                      value: e,
                      groupValue: provider.howMuchFreq,
                      onChanged: (e) {
                        if (e != null) {
                          provider.howMuchFreq = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Are you aware that FGM and IPV are forms of Violence against Women and Girl?', style: TextStyle(
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
                      groupValue: provider.isAwareOfViolence,
                      onChanged: (e) {
                        if (e != null) {
                          provider.isAwareOfViolence = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Have you ever been part of a group or meeting in your community to stop FGM and IPV?', style: TextStyle(
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
                      groupValue: provider.partOfGroup,
                      onChanged: (e) {
                        if (e != null) {
                          provider.partOfGroup = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('How much do you know about FGM and IPV after participating in the community activity? (Select one option)', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.howMuch.map<Widget>((e) {
                    return RadioListTile.adaptive(
                      title: Text(e, style: TextStyle(
                          fontSize: 24.sp
                      )),
                      value: e,
                      groupValue: provider.howMuchPart,
                      onChanged: (e) {
                        if (e != null) {
                          provider.howMuchPart = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Have you ever talked or discussed about FGM and IPV, or about equal rights for men and women?', style: TextStyle(
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
                      groupValue: provider.talked,
                      onChanged: (e) {
                        if (e != null) {
                          provider.talked = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('How often do you take part in such talks or discussions?(Select one option)', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.howMuch.map<Widget>((e) {
                    return RadioListTile.adaptive(
                      title: Text(e, style: TextStyle(
                          fontSize: 24.sp
                      )),
                      value: e,
                      groupValue: provider.takePart,
                      onChanged: (e) {
                        if (e != null) {
                          provider.takePart = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  // ................................
                  Text('How often do you come across such messages? (Select one option)', style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  ...provider.howMuch.map<Widget>((e) {
                    return RadioListTile.adaptive(
                      title: Text(e, style: TextStyle(
                          fontSize: 24.sp
                      )),
                      value: e,
                      groupValue: provider.haveOftenDoYouCome,
                      onChanged: (e) {
                        if (e != null) {
                          provider.haveOftenDoYouCome = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Do you think that these messages are helpful in changing people’s attitudes and actions about FGM, IPV, and equal rights for men and women?', style: TextStyle(
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
                      groupValue: provider.doYouThinkMessages,
                      onChanged: (e) {
                        if (e != null) {
                          provider.doYouThinkMessages = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text('Do you think that your community should see or hear more messages about FGM, IPV, and equal rights for men and women?', style: TextStyle(
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
                      groupValue: provider.doYouThinkCommunity,
                      onChanged: (e) {
                        if (e != null) {
                          provider.doYouThinkCommunity = e;
                        }
                      },
                      activeColor: const Color(0xff783793),
                    );
                  }).toList(),
                  SizedBox(
                    height: 32.h,
                  ),
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
                    // Navigation.push(const InventorySuccessView(), context);
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
