import 'package:blossom/datasource/contact_person_data/home_visit_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'home_visits_provider.dart';



class QuizQuestion extends StatelessWidget {
  final int questionNumber;
  final FamilyDataType type;

  const QuizQuestion({super.key, required this.questionNumber, required this.type});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeVisitsProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getQuestionText(questionNumber, type),
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w500
          ),
        ),
        ListTile(
          title: const Text('Yes'),
          leading: Radio<bool>(
            value: true,
            groupValue: provider.getAnswer(type, questionNumber),
            onChanged: (bool? value) {
              provider.setAnswer(type, questionNumber, value);
            },
          ),
        ),
        ListTile(
          title: const Text('No'),
          leading: Radio<bool>(
            value: false,
            groupValue: provider.getAnswer(type, questionNumber),
            onChanged: (bool? value) {
              provider.setAnswer(type, questionNumber, value);
            },
          ),
        ),
      ],
    );
  }

  String getQuestionText(int number, FamilyDataType dataType) {
    switch (dataType) {

      case FamilyDataType.fgm:
        return HomeVisitData.getFGMQuestionText(number);
      case FamilyDataType.ipv:
        return HomeVisitData.getIPVQuestionText(number);
      case FamilyDataType.srhr:
        return HomeVisitData.getSRHRQuestionText(number);
    }
  }


}