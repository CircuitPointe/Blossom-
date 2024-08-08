import 'package:flutter/cupertino.dart';

class FeedbackProvider extends ChangeNotifier {
  var text = "We value your feedback! Please let us know about your experience and any suggestions you may have to improve our services. Your input is essential in helping us provide the best support possible.";

  TextEditingController controller = TextEditingController();

  void submitFeedback() {}
}