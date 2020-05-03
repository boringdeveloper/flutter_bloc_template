import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum States { IDLE, WAITING, DONE, ERROR }

//// design

// font sizes

const headingFontSize = 20.0;
const subheadingFontSize = 15.0;
const primaryFontSize = 12.0;

// text styles

const headingStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontSize: headingFontSize,
  fontWeight: FontWeight.bold,
);

const subheadingStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontSize: subheadingFontSize,
);

const primaryTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontSize: primaryFontSize,
);

const faintTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white70,
  fontSize: primaryFontSize,
);

const inputTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.black,
);

// decorations
const inputHeight = 50.0;

inputDecoration(String hintText) => InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.black26,
        fontSize: 15.0,
        fontFamily: 'Montserrat',
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
      ),
    );
