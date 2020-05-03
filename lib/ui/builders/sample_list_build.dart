import 'package:app_bloc_template/ui/screens/filler.dart';
import 'package:flutter/material.dart';
import 'package:app_bloc_template/models/sample_model.dart';
import 'package:app_bloc_template/utilities/constant.dart';

buildEventList(SampleList values, BuildContext context) {
  return ListView.builder(
      itemCount: values.events.length,
      itemBuilder: (BuildContext context, int index) {
        return SampleListBuild(values.events[index]);
      });
}

class SampleListBuild extends StatefulWidget {
  final SampleItem sampleModel;
  SampleListBuild(this.sampleModel);

  createState() => SampleListBuildState();
}

class SampleListBuildState extends State<SampleListBuild>
    with TickerProviderStateMixin {
  initState() {
    super.initState();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FillerPage(),
            ),
          );
        },
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: 25.0,
              ),
              margin: EdgeInsets.only(top: 10.00),
              child: Text(
                widget.sampleModel.name,
                style: headingStyle,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 20.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  height: 150.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            alignment: FractionalOffset.topCenter,
                            image: new NetworkImage(
                              widget.sampleModel.banner,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                            colors: [
                              Color.fromRGBO(183, 28, 28, 0.85),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Text(
                          widget.sampleModel.shortDesc,
                          style: primaryTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
