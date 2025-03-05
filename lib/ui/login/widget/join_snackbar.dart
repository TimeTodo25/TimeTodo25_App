import 'package:flutter/material.dart';

void joinSnackBar({
  required BuildContext context,
  required String message,
  // Color backgroundColor = Colors.red,
  // Color textColor = Colors.white,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // backgroundColor: backgroundColor,
    ),
  );
}
