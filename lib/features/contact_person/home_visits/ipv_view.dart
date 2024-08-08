import 'package:blossom/features/contact_person/home_visits/ipv_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../navigation.dart';
import '../home/home_menu_item.dart';



class IPVView extends StatelessWidget {
  const IPVView({super.key});

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
        title: Text('INTIMATE PARTNER VIOLENCE', style: TextStyle(
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
                  children: List.generate(3, (index) {
                    return InkWell(
                        onTap: () {
                          Navigation.push(IPVDetailView(i: index), context);
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
        return "What is/ Types of Intimate Partner Violence (IPV)";
      case 1:
        return "Effects of IPV";
      case 2:
        return "Questions & Answer";
      default:
        return "";
    }
  }
}
