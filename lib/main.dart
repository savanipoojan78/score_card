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
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text('Argentina',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                )),
               Container(child: new Image.asset('image/argentina.png',fit: BoxFit.fill,),height: 100.0,width: 200.0,),
              ],
            ),
          )),
          VerticalDivider(),
          new Expanded(
              child: Padding(
            padding: new EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text('Australia',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                )),
                Container(child: new Image.asset('image/Australia.png',fit: BoxFit.fill,),height: 100.0,width: 200.0,),
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
      padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
      child: new Container(
        width: 1.0,
        color: Colors.black,
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      ),
    );
  }
}
