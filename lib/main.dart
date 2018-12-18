import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      // TODO: implement createState
      new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('ScoreCard App'),
        ),
        body: Layout());
  }
}

class Layout extends StatelessWidget {
  void _goal() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.all(2.0),
      child: new Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Expanded(
              child: Padding(
            padding: new EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text('Argentina',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                )),
                Container(
                  child: new Image.asset(
                    'image/argentina.png',
                    fit: BoxFit.fill,
                  ),
                  height: 100.0,
                  width: 200.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: new Text(
                    '0',
                    style: new TextStyle(
                        fontSize: 50.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 8.0),
                  child: AllFourStyle(),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: Center(
                              child: new Text(
                                "GOAL!",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Center(
                              child: new Text(
                                "SHOTS",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Center(
                              child: new Text(
                                "ON TARGET",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Center(
                              child: new Text(
                                "FOUL!",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, right: 30.0),
                              child: Center(
                                child: new Text(
                                  "YELLOW/RED CARD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),

              ],
            ),
          )),
          VerticalDivider(),
          new Expanded(
              child: Padding(
            padding: new EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    'Australia',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                )),
                Container(
                  child: new Image.asset(
                    'image/Australia.png',
                    fit: BoxFit.fill,
                  ),
                  height: 100.0,
                  width: 200.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: new Text(
                    '0',
                    style: new TextStyle(
                        fontSize: 50.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 8.0),
                  child: AllFourStyle(),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                            const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: Center(
                              child: new Text(
                                "GOAL!",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                            const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Center(
                              child: new Text(
                                "SHOTS",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                            const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Center(
                              child: new Text(
                                "ON TARGET",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            padding:
                            const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Center(
                              child: new Text(
                                "FOUL!",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 180.0,
                      height: 35.0,
                      child: Center(
                        child: new RaisedButton(
                            elevation: 10.0,
                            materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                            color: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, right: 30.0),
                              child: Center(
                                child: new Text(
                                  "YELLOW/RED CARD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            onPressed: _goal,
                            splashColor: Colors.red,
                            textColor: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            )),
                      ),
                    )),
              ],
            ),
          )
              //new Image.asset('image/argentina.png'),
              ),
        ],
      ),
    );
  }
}

class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: new Container(
        width: 1.0,
        color: Colors.black,
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      ),
    );
  }
}

class AllFourStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Row(
        children: <Widget>[
          new Text(
            '0',
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, right: 7.0),
            child: new Image.asset(
              'image/shot.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: new Text(
              '0',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, right: 7.0),
            child: new Image.asset(
              'image/post.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: new Text(
              '0',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, right: 7.0),
            child: new Image.asset(
              'image/wistles.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: new Text(
              '0',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, right: 7.0),
            child: new Image.asset(
              'image/card.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
