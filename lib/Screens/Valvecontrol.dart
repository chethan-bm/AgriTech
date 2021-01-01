import 'package:flutter/material.dart';

class Valvecontrol extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Valvecontrol> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text('Valve Control'),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child:Container(
          margin: EdgeInsets.only(top: 40),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/radar.png'),
                  ),
                  Text('Area Covered'),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/serum.png'),
                    ),
                    Text('Moisture Level'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/humidity.png'),
                    ),
                    Text('Humidity Level'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                    child:Text('Please turn the valve', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Valve Control', style: TextStyle(fontSize: 20),),
                    Switch(
                      value: isSwitched,
                      onChanged: (value){
                        setState(() {
                          isSwitched=value;
                          print(isSwitched);
                        });
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.lightGreenAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}