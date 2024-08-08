import 'package:blossom/features/contact_person/data_collection/data_collection_view.dart';
import 'package:blossom/features/contact_person/family_inventory/family_inventory_view.dart';
import 'package:blossom/features/contact_person/home/home_menu_item.dart';
import 'package:blossom/features/contact_person/home_visits/home_visit_view.dart';
import 'package:blossom/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContactPersonHomeView extends StatelessWidget {
  const ContactPersonHomeView({super.key});

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
        title: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black
          ),
        ),
        actions: const [
          Icon(Icons.line_style)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset('assets/enter_code.png', width: 390.w,),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 32.w,
                crossAxisCount: 3,
                childAspectRatio: 1.5,
                children: List.generate(6, (index) {
                  return InkWell(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigation.push(const FamilyInventoryView(), context);
                        case 1:
                          Navigation.push(const HomeVisitView(), context);
                        case 2:
                          //
                        case 3:
                          //
                        case 4:
                          Navigation.push(const DataCollectionView(), context);
                        case 5:
                          //
                        default:
                          //
                      }
                    },
                    child: HomeMenuItem(icon: getIconData(index), text: getText(index), isColored: false)
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  IconData getIconData(int index) {
    switch (index) {
      case 0:
        return Icons.people_alt_sharp;
      case 1:
        return Icons.home;
      case 2:
        return Icons.newspaper_outlined;
      case 3:
        return Icons.contact_page;
      case 4:
        return Icons.data_thresholding_rounded;
      case 5:
        return Icons.picture_in_picture;
      default:
        return Icons.people_alt_sharp;
    }
  }

  String getText(int index) {
    switch (index) {
      case 0:
        return "Family Inventory";
      case 1:
        return "Home Visits";
      case 2:
        return "Change Champions Training";
      case 3:
        return "Resources and FAQs";
      case 4:
        return "Data Collection";
      case 5:
        return "Project Pictures & Videos";
      default:
        return "";
    }
  }
}
