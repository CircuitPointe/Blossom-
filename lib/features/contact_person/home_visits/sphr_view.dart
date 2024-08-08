import 'package:blossom/features/contact_person/home_visits/sphr_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../navigation.dart';
import '../home/home_menu_item.dart';


class SPHRView extends StatelessWidget {
  const SPHRView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigation.pop(context);
            },
            icon: Icon(Icons.chevron_left, size: 32.w, color: Colors.black,)
        ),
        title: Text('SEXUAL REPRODUCTIVE HEALTH AND RIGHT (SPHR)', style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff783793)
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset('assets/family_data_two.png', width: 390.w,),
            Expanded(
              child: GridView.count(
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 32.w,
                  crossAxisCount: 3,
                  childAspectRatio: 1.5,
                  children: List.generate(6, (index) {
                    return InkWell(
                        onTap: () {
                          Navigation.push(SPHRDetailView(i: index), context);
                        },
                        child: HomeMenuItem(text: getText(index), isColored: false)
                    );
                  })
              ),
            )
          ],
        ),
      ),
    );
  }

  String getText(int index) {
    switch (index) {
      case 0:
        return "WHAT IS SEXUAL REPRODUCTIVE HEALTH AND RIGHT (SRHR)";
      case 1:
        return "FORMS OF SEXUAL REPRODUCTIVE HEALTH AND RIGHT (SRHR)";
      case 2:
        return "SEXUAL REPRODUCTIVE HEALTH AND RIGHT (SRHR) RIGHTS";
      case 3:
        return "CHALLENGES OF REPRODUCTIVE HEALTH AND RIGHT (SRHR) ";
      case 4:
        return "IMPORTANCE OF REPRODUCTIVE HEALTH AND RIGHT (SRHR)";
      case 5:
        return "Questions & Answer";
      default:
        return "";
    }
  }
}
