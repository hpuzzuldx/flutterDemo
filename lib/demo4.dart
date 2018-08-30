import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class Demo4Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Demo4State();
  }

}

class Demo4State  extends State<Demo4Page>{
  String _data = "hello";
  int dataList = 15;

  ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text("hello"),
    ),
        body:  new RefreshIndicator(child: ListView.builder(
                itemCount: dataList,
                controller: _scrollController,

                itemBuilder: (context,i){

                  return new Container(
                    child: new Padding(padding: EdgeInsets.all(10.0),
                      child: new ListTile(
                        title: new Text("datalist"+i.toString()),
                        leading: new Icon(Icons.build),

                      ),),
                  );
                }), onRefresh: loadData),

    );

  }




  Future<Null> loadData() async{
     dataList = dataList+2;
    await getData();
    setState(() {

    });
  }

  bool _notificationEvent(Notification notification) {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // 滑动到最底部了
        dataList = dataList + 1;
        setState(() {

        });
    }
    return true;
      }

  getData() async {
    var httpClient = new HttpClient();
    var uri = new Uri.https(
        'api.myjson.com', '/bins/ql84s/', {'param1': '42', 'param2': 'foo'});
    var request = await httpClient.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();
    print("==========="+responseBody);
    //var data = json.decode(responseBody);
    //print("==========="+data[0]['name']);
  }


}