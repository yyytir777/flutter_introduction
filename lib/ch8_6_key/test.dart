import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyListWidget(),
    );
  }
}

class MyListWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyListWidgetState();
  }
}

class _MyListWidgetState extends State<MyListWidget>{
  List<Widget> widgetList =[
    MyColorItemWidget(Colors.red, key : UniqueKey(),),
    MyColorItemWidget(Colors.black38, key : UniqueKey(),)
  ];
  onChange(){
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Key Test'),),
      body: Column(
        children: [
          Row(children: widgetList),
          ElevatedButton(onPressed: onChange, child: Text('toggle'))
        ],
      ),
    );
  }
}

class MyColorItemWidget extends StatefulWidget{
  Color color;
  MyColorItemWidget(this.color, {Key? key}) : super(key : key);
  
  @override
  State<StatefulWidget> createState(){
    return _MyColorItemWidgeState(color);
  }
}

class _MyColorItemWidgeState extends State<MyColorItemWidget>{
  Color color;
  _MyColorItemWidgeState(this.color);
  @override
  Widget build(BuildContext context){
    return Expanded(child: Container(color: color, width: 150, height: 150,));
  }
}