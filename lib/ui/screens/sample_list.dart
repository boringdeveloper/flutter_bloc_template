import 'package:flutter/material.dart';
import 'package:app_bloc_template/blocs/sample_bloc.dart';
import 'package:app_bloc_template/ui/builders/sample_list_build.dart';

// model
import 'package:app_bloc_template/models/screen_state.dart';
import 'package:app_bloc_template/utilities/constant.dart';
import 'package:app_bloc_template/models/sample_model.dart';

ScrollController scrollControllerEventList;

class SampleListPage extends StatefulWidget {
  @override
  _SampleListPageState createState() => _SampleListPageState();
}

class _SampleListPageState extends State<SampleListPage> {
  @override
  void initState() {
    setState(() {});
    scrollControllerEventList = ScrollController(initialScrollOffset: 84);
    super.initState();
  }

  @override
  void dispose() {
    scrollControllerEventList.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // fetchEventList();
    setState(() {});

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(
            child: streamBuilder(sampleBloc.events),
          ),
        ],
      ),
    );
  }

  streamBuilder(val) {
    return StreamBuilder(
      stream: val,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return buildEventList(snapshot.data, context);
        } else {
          return Container(
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red[900],
              ),
            ),
          );
        }
      },
    );
  }

  void fetchEventList() {
    String searching = "";
    String limit = "10";
    String offset = "0";

    final SampleListRequest request =
        SampleListRequest(searching: searching, limit: limit, offset: offset);
    sampleBloc.fetchSampleList(request);
  }

  void onStateChanged(ScreenState state) {
    switch (state.state) {
      case States.DONE:
        break;
      case States.ERROR:
        break;
      case States.IDLE:
        break;
      case States.WAITING:
        break;
    }
  }
}
