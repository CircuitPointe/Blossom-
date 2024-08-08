import 'package:flutter/cupertino.dart';

class ContactUsProvider extends ChangeNotifier {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController message = TextEditingController();

  void submit() {}
}