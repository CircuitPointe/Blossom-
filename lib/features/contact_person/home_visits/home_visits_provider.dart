import 'package:flutter/material.dart';



class HomeVisitsProvider with ChangeNotifier {
  TextEditingController numOfFamilyMembers = TextEditingController();
  TextEditingController date = TextEditingController();

  Map<int, bool?> ipvAnswers = {};
  Map<int, bool?> srhrAnswers = {};
  Map<int, bool?> fgmAnswers = {};

  bool? getAnswer(FamilyDataType dataType, int questionNumber) {
    switch (dataType) {

      case FamilyDataType.fgm:
        return fgmAnswers[questionNumber];
      case FamilyDataType.ipv:
        return ipvAnswers[questionNumber];
      case FamilyDataType.srhr:
        return srhrAnswers[questionNumber];
    }
  }

  void setFGMAnswer(int questionNumber, bool? value) {
    fgmAnswers[questionNumber] = value;
    notifyListeners();
  }

  void setIPVAnswer(int questionNumber, bool? value) {
    ipvAnswers[questionNumber] = value;
    notifyListeners();
  }

  void setSRHRAnswer(int questionNumber, bool? value) {
    srhrAnswers[questionNumber] = value;
    notifyListeners();
  }

  void setAnswer(FamilyDataType dataType, int questionNumber, bool? value) {
    switch (dataType) {

      case FamilyDataType.fgm:
        setFGMAnswer(questionNumber, value);
      case FamilyDataType.ipv:
        setIPVAnswer(questionNumber, value);
      case FamilyDataType.srhr:
        setSRHRAnswer(questionNumber, value);
    }
  }
}


enum FamilyDataType {
  fgm, ipv, srhr
}