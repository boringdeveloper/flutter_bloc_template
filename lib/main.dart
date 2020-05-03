import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_bloc_template/ui/rootpage.dart';

void main() => runApp(FlutterBlocApp());

class FlutterBlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      title: 'Flutter Bloc App',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.red,
        textTheme: TextTheme(body1: TextStyle(color: Colors.black)),
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RootPage(),
      },
    );
  }
}
