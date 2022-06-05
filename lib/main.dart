import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
} 

class MainPage extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<MainPage> {
  bool _wifiBool = false;
  bool _airBool = false;
  bool _alarmBool = false;
  bool _cameraBool = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MADLayoutAssignmentPart2',
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Living room'),
                      Tab(text: 'Bedroom'),
                    ],
                  ),
                  title: Text("My Home"),
                ),
                body: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                SizedBox.fromSize(
                  size: Size(56, 56),
                  child: ClipOval(
                    child: Material(
                      color: Colors.blue,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.wifi),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Switch Wifi',
                            onPressed: () {
                              setState(() {
                                if (_wifiBool == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _wifiBool= !_wifiBool;
                              });
                            },
                          ),
                          Text('Is WiFi on? : $_wifiBool',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(56, 56), 
                  child: ClipOval(
                    child: Material(
                      color: Colors.blue, 

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.ac_unit),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Switch Ac',
                            onPressed: () {
                              setState(() {
                                if (_airBool == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _airBool = !_airBool;
                              });
                            },
                          ),
                          Text('Is AC on? : $_airBool',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(56, 56), 
                  child: ClipOval(
                    child: Material(
                      color: Colors.blue,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.alarm),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Switch Alarm',
                            onPressed: () {
                              setState(() {
                                if (_alarmBool == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _alarmBool = !_alarmBool;
                              });
                            },
                          ),
                          Text('Is Alarm on? : $_alarmBool',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(56, 56), // button width and height
                  child: ClipOval(
                    child: Material(
                      color: Colors.blue, // button color

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.camera),
                            color: Colors.white,
                            iconSize: 55,
                            tooltip: 'Switch Camera',
                            onPressed: () {
                              setState(() {
                                if (_cameraBool == false) {
                                  print('ON');
                                } else {
                                  print('OFF');
                                }
                                _cameraBool = !_cameraBool;
                              });
                            },
                          ),
                          Text('Is Camera on?: $_cameraBool',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}