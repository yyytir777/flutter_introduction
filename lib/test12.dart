import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Key test',
      home: Scaffold(
        appBar: AppBar(title: Text('Key test')),
        body: Column(
          children: [
            Row(children: [MyRedItemWidget(), MyBlueItemWidget()])
          ],
        ),
      ),
    );
  }
}

class MyRedItemWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyRedItemWidgetState(Colors.red);
  }
}

class _MyRedItemWidgetState extends State<MyRedItemWidget>{
  Color color;
  _MyRedItemWidgetState(this.color);
  @override
  Widget build(BuildContext context){
    return Expanded(child: Container(color: color, width: 150, height: 150,));
  }
}

class MyBlueItemWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyBlueItemWidgetState(Colors.blue);
  }
}

class _MyBlueItemWidgetState extends State<MyBlueItemWidget>{
  Color color;
  _MyBlueItemWidgetState(this.color);
  @override
  Widget build(BuildContext context){
    return Expanded(child: Container(color: color, width: 150, height: 150,));
  }
}