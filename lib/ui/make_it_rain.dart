import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;

  void makeItRain() {
    setState(() {
      _moneyCounter = (_moneyCounter + 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Rich!",
                style: new TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 30.0),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text('\$ $_moneyCounter',
                    style: new TextStyle(
                      color: (_moneyCounter > 2500
                          ? Colors.blue
                          : Colors.greenAccent),
                      fontSize: 47.0,
                      fontWeight: FontWeight.w800,
                    )),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white70,
                  onPressed: makeItRain,
                  child: new Text("Let It Rain!",
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
