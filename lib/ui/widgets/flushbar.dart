import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showFlushbar(String message, String messageType, BuildContext context) {
  Color backgroundColor =
      (messageType == "error") ? Colors.red[900] : Colors.blue;

  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.GROUNDED,
    reverseAnimationCurve: Curves.decelerate,
    forwardAnimationCurve: Curves.elasticOut,
    backgroundColor: backgroundColor,
    icon: Icon(
      Icons.error,
      color: Colors.white,
    ),
    messageText: Text(
      "$message",
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.white,
        fontFamily: "Montserrat",
      ),
    ),
    duration: Duration(seconds: 3),
  )..show(context);
}
