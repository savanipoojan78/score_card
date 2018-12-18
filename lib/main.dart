import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MaterialApp(
    home:new MyApp() ,
      debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
    // TODO: implement createState
    new _State();




}
class _State extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ScoreCard App'),
      ),
      body: Layout()
    );

  }

}
class Layout extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.all(21.0),
      child: new Column(
        children: <Widget>[
          new Text('Add Widget Here'),
          new Text('Add second Widget Here')
        ],
      ),
    );
  }

}