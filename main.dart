import 'package:flutter/material.dart';

void main() => runApp(grid_list());

class grid_list extends StatelessWidget {
  bool isSwitched = false;
  var textValue = 'OFF';
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('ON');
    } else {
      setState(() {
        isSwitched = false;
      });
      print('OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment 2',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Part 1"),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  color: Colors.blue,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.wifi,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 160, left: 120),
                        child: Text('Wi-Fi',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.yellow,
                        inactiveThumbColor: Colors.redAccent,
                        inactiveTrackColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.green,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.ac_unit,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140, left: 70),
                        child: Text('Air Condition',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.yellow,
                        inactiveThumbColor: Colors.redAccent,
                        inactiveTrackColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.orange,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.access_alarm,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 160, left: 100),
                        child: Text('Alarm',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.yellow,
                        inactiveThumbColor: Colors.redAccent,
                        inactiveTrackColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.red,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.camera_indoor,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 160, left: 100),
                        child: Text('Camera',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.yellow,
                        inactiveThumbColor: Colors.redAccent,
                        inactiveTrackColor: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }

  void setState(Null Function() param0) {}
}
