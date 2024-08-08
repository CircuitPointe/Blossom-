import 'package:flutter/material.dart';

class Functions {
  static toast(
      String content,
      BuildContext context,
      ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          content,
        ),
      ),
    );
  }
}