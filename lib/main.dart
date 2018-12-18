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
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();
  int _team_A_goal= 0;
  int _team_B_goal=0;
  int _team_A_shoots=0;
  int _team_B_shoots=0;
  int _team_A_ontarget=0;
  int _team_B_ontarget=0;
  int _team_A_wistles=0;
  int _team_B_wistles=0;
  int _team_A_card=0;
  int _team_B_card=0;
  void _reset()
  {
    setState((){
      if(_team_A_goal>_team_B_goal)
        {
          _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('TEAM A WON')));
        }
        else if(_team_A_goal<_team_B_goal)
          {
            _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('TEAM B WON')));
          }
          else
            {
              _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('MATCH TIE')));
            }

      _team_A_goal= 0;
      _team_B_goal=0;
      _team_A_shoots=0;
      _team_B_shoots=0;
      _team_A_ontarget=0;
      _team_B_ontarget=0;
      _team_A_wistles=0;
      _team_B_wistles=0;
      _team_A_card=0;
      _team_B_card=0;
    });

  }
  void _team_A_goalF() {
    setState((){
      _team_A_goal++;
    });
  }
  void _team_B_goalF() {
    setState((){
      _team_B_goal++;
    });
  }
  void _team_A_shootsF() {
    setState((){
      _team_A_shoots++;
    });
  }
  void _team_B_shootsF() {
    setState((){
      _team_B_shoots++;
    });
  }
  void _team_A_ontargetF() {
    setState((){
      _team_A_ontarget++;
    });
  }
  void _team_B_ontargetF() {
    setState((){
      _team_B_ontarget++;
    });
  }
  void _team_A_wistlesF() {
    setState((){
      _team_A_wistles++;
    });
  }
  void _team_B_wistlesF() {
    setState((){
      _team_B_wistles++;
    });
  }
  void _team_A_cardF() {
    setState((){
      _team_A_card++;
    });
  }
  void _team_B_cardF() {
    setState((){
      _team_B_card++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        key: _scaffoldstate,
      appBar: new AppBar(
          title: new Text('ScoreCard App'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.refresh), onPressed: _reset),
        ],
        ),
        body: new Container(
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
                            _team_A_goal.toString(),
                            style: new TextStyle(
                                fontSize: 50.0,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, left: 8.0),
                          child: new Container(
                            child: new Row(
                              children: <Widget>[
                                new Text(
                                  _team_A_shoots.toString(),
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
                                    _team_A_ontarget.toString(),
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
                                    _team_A_wistles.toString(),
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
                                    _team_A_card.toString(),
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
                          ),
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
                                    onPressed: _team_A_goalF,
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
                                    onPressed: _team_A_shootsF,
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
                                    onPressed: _team_A_ontargetF,
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
                                    onPressed: _team_A_wistlesF,
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
                                    onPressed: _team_A_cardF,
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
                            _team_B_goal.toString(),
                            style: new TextStyle(
                                fontSize: 50.0,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, left: 8.0),
                          child: new Container(
                            child: new Row(
                              children: <Widget>[
                                new Text(
                                  _team_B_shoots.toString(),
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
                                    _team_B_ontarget.toString(),
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
                                    _team_B_wistles.toString(),
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
                                    _team_B_card.toString(),
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
                          ),
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
                                    onPressed: _team_B_goalF,
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
                                    onPressed: _team_B_shootsF,
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
                                    onPressed: _team_B_ontargetF,
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
                                    onPressed: _team_B_wistlesF,
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
                                    onPressed: _team_B_cardF,
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


