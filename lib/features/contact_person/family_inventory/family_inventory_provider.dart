
import 'package:flutter/material.dart';

class FamilyInventoryProvider with ChangeNotifier {
  String? _communityName;
  String? get communityName => _communityName;
  set communityName(String? value) {
    _communityName = value;
    notifyListeners();
  }

  TextEditingController familyName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController numOfPeople = TextEditingController();
  TextEditingController numOfMen = TextEditingController();
  TextEditingController numOfWomen = TextEditingController();

  String? _gender;
  String? get gender => _gender;
  set gender(String? value) {
    _gender = value;
    notifyListeners();
  }

  String? _educationLevel;
  String? get educationLevel => _educationLevel;
  set educationLevel(String? value) {
    _educationLevel = value;
    notifyListeners();
  }

  String? _isAwareOfResources;
  String? get isAwareOfResources => _isAwareOfResources;
  set isAwareOfResources(String? value) {
    _isAwareOfResources = value;
    notifyListeners();
  }

  String? _hasExperiencedViolence;
  String? get hasExperiencedViolence => _hasExperiencedViolence;
  set hasExperiencedViolence(String? value) {
    _hasExperiencedViolence = value;
    notifyListeners();
  }

  int _numberOfPeople = 0;
  int get numberOfPeople => _numberOfPeople;
  set numberOfPeople(int value) {
    _numberOfPeople = value;
    notifyListeners();
  }

  final Map<String, bool> _ages = {
    '0-5 years': false,
    '6-12 years': false,
    '13-18 years': false,
    '19-39 years': false,
    '31-50 years': false,
    '51 and above': false,
  };
  Map<String, bool> get ages => _ages;
  setAge(String key, bool value) {
    _ages[key] = value;
    notifyListeners();
  }

  int _numberOfMen = 0;
  int get numberOfMen => _numberOfMen;
  set numberOfMen(int value) {
    _numberOfMen = value;
    notifyListeners();
  }

  int _numberOfWomen = 0;
  int get numberOfWomen => _numberOfWomen;
  set numberOfWomen(int value) {
    _numberOfWomen = value;
    notifyListeners();
  }

  String? _extendedFamily;
  String? get extendedFamily => _extendedFamily;
  set extendedFamily(String? value) {
    _extendedFamily = value;
    notifyListeners();
  }

  String? _meetingFrequency;
  String? get meetingFrequency => _meetingFrequency;
  set meetingFrequency(String? value) {
    _meetingFrequency = value;
    notifyListeners();
  }

  final List<String> genderList = [
    'Male',
    'Female',
    'Other'
  ];

  final List<String> defaultList = [
    'Yes',
    'No'
  ];

  final List<String> meetingRoutine = ['A few times a year', 'Monthly or more often', 'Never'];
}
