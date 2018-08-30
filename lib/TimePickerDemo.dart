import 'dart:async';

import 'package:flutter/material.dart';

class TimePickerDemo extends StatelessWidget{
  DateTime _dataTime;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("title",
        softWrap: true,),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Center(
         child: FlatButton(onPressed: (){
           _showdatepick(context);
         }, child: new Text("显示时间控件")),
        ),
      ),
    );

  }


  Future<Null> _showdatepick(BuildContext context) async{
    _dataTime = new DateTime.now();
   final DateTime pick = await showDatePicker(
        context: context,
        initialDate: _dataTime,
        firstDate: new DateTime(2016),
        lastDate:  new DateTime(2019));
    return pick;

  }
}