import 'package:flutter/cupertino.dart';

class DataCollectionProvider extends ChangeNotifier {
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController village = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController occupation = TextEditingController();

  String? _communityName;
  String? get communityName => _communityName;
  set communityName(String? value) {
    _communityName = value;
    notifyListeners();
  }

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

  String? _maritalStatus;
  String? get maritalStatus => _maritalStatus;
  set maritalStatus(String? value) {
    _maritalStatus = value;
    notifyListeners();
  }

  String? _isAwareOfFGM;
  String? get isAwareOfFGM => _isAwareOfFGM;
  set isAwareOfFGM(String? value) {
    _isAwareOfFGM = value;
    notifyListeners();
  }

  String? _isAwareOfIPV;
  String? get isAwareOfIPV => _isAwareOfIPV;
  set isAwareOfIPV(String? value) {
    _isAwareOfIPV = value;
    notifyListeners();
  }

  String? _howMuchFreq;
  String? get howMuchFreq => _howMuchFreq;
  set howMuchFreq(String? value) {
    _howMuchFreq = value;
    notifyListeners();
  }

  String? _isAwareOfViolence;
  String? get isAwareOfViolence => _isAwareOfViolence;
  set isAwareOfViolence(String? value) {
    _isAwareOfViolence = value;
    notifyListeners();
  }

  String? _partOfGroup;
  String? get partOfGroup => _partOfGroup;
  set partOfGroup(String? value) {
    _partOfGroup = value;
    notifyListeners();
  }

  String? _howMuchPart;
  String? get howMuchPart => _howMuchPart;
  set howMuchPart(String? value) {
    _howMuchPart = value;
    notifyListeners();
  }

  String? _talked;
  String? get talked => _talked;
  set talked(String? value) {
    _talked = value;
    notifyListeners();
  }

  String? _takePart;
  String? get takePart => _takePart;
  set takePart(String? value) {
    _takePart = value;
    notifyListeners();
  }
//////
  String? _awareOfOngoing;
  String? get awareOfOngoing => _awareOfOngoing;
  set awareOfOngoing(String? value) {
    _awareOfOngoing = value;
    notifyListeners();
  }

  String? _likeToPart;
  String? get likeToPart => _likeToPart;
  set likeToPart(String? value) {
    _likeToPart = value;
    notifyListeners();
  }

  String? _doYouThinkTalks;
  String? get doYouThinkTalks => _doYouThinkTalks;
  set doYouThinkTalks(String? value) {
    _doYouThinkTalks = value;
    notifyListeners();
  }

  String? _haveYouEverSeen;
  String? get haveYouEverSeen => _haveYouEverSeen;
  set haveYouEverSeen(String? value) {
    _haveYouEverSeen = value;
    notifyListeners();
  }

  String? _haveOftenDoYouCome;
  String? get haveOftenDoYouCome => _haveOftenDoYouCome;
  set haveOftenDoYouCome(String? value) {
    _haveOftenDoYouCome = value;
    notifyListeners();
  }

  String? _doYouThinkMessages;
  String? get doYouThinkMessages => _doYouThinkMessages;
  set doYouThinkMessages(String? value) {
    _doYouThinkMessages = value;
    notifyListeners();
  }

  String? _doYouThinkCommunity;
  String? get doYouThinkCommunity => _doYouThinkCommunity;
  set doYouThinkCommunity(String? value) {
    _doYouThinkCommunity = value;
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

  final List<String> howMuch = [
    'Not much',
    'Very Little',
    'Little',
    'Very much',
    'A lot'
  ];
}