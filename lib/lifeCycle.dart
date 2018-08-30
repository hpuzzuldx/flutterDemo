import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Demo2Page extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return new Demo2State();
  }

  //简化写法
 // Demo2State createState() => new Demo2State();

}

class Demo2State extends State<StatefulWidget> with WidgetsBindingObserver{
  String _data = "demo2page";
  AppLifecycleState _lastLifecyleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecyleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
     return new Scaffold(
       appBar: new AppBar(
         title: new Text("demo2page"),
       ),
       body: new GestureDetector(
           onTap: _chanageData,
           child:  new Container(
             width: 100.0,
            height: 100.0,
            color: Colors.amberAccent,
            child:  new Center(
               child: new Text(_data),
             ),
           ),
         ),
     );
     
  }

  _chanageData() {
    final wordPair = new WordPair.random();
    _data = wordPair.asPascalCase;
    setState(() {

    });
  }
}