import 'package:app_bloc_template/utilities/constant.dart';
import 'package:flutter/material.dart';

class FillerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Expanded(
          child: Text(
            'Filler Page!.',
            style: headingStyle,
          ),
        ),
      ),
    );
  }
}
