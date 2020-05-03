import 'package:app_bloc_template/ui/screens/filler.dart';
import 'package:flutter/material.dart';
import 'package:app_bloc_template/utilities/back_to_start.dart';

// screens
import 'package:app_bloc_template/ui/screens/sample_list.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  num _currentItem = 0;
  final _listWidgets = [SampleListPage(), FillerPage(), FillerPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red[900],
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Feed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("Form"),
          ),
        ],
        currentIndex: _currentItem,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white70,
        onTap: _onItemTapped,
      ),
      body: _listWidgets[_currentItem],
    );
  }

  _onItemTapped(int index) {
    setState(() {
      if (index == _currentItem && index == 0)
        backToStart(scrollControllerEventList);

      _currentItem = index;
    });
  }
}
