import 'package:blossom/features/contact_us/contact_us_view.dart';
import 'package:blossom/features/feedback/feedback_view.dart';
import 'package:blossom/features/helpline/helpline_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_view.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ContactPersonHomeView(),
    HelplineView(),
    FeedbackView(),
    ContactUsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildBottomNavigationItem(Icons.home, 'Home', 0),
              _buildBottomNavigationItem(Icons.help, 'Helpline', 1),
              _buildBottomNavigationItem(Icons.feedback, 'Feedback', 2),
              _buildBottomNavigationItem(Icons.phone, 'Contact Us', 3),
            ],
          ),
        ),
    );
  }

  Widget _buildBottomNavigationItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    final color = isSelected ? const Color(0xff5A1975) : const Color(0xff5A1975).withOpacity(0.6);

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: <Widget>[
            Icon(icon, color: color, size: 32.sp,),
            SizedBox(width: 4.w), // Spacing between icon and text
            Text(label, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: color)),
          ],
        ),
      ),
    );
  }
}
