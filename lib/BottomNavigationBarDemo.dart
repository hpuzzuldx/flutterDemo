import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _BottomNavigationState ();
  }

}

class _BottomNavigationState extends State<BottomNavigationBarDemo> {
  var arraydata = ["home","bike","bus"];
  PageController _PageControl;
  int page = 0;

  @override
  void initState() {
    super.initState();
    _PageControl = new PageController(initialPage: this.page);
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.directions_car), title: new Text(arraydata[0])));
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.directions_bike), title: new Text(arraydata[1])));
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.directions_bus), title: new Text(arraydata[2])));

  }

  @override
  void dispose() {
    super.dispose();
  }

  final List<BottomNavigationBarItem> items = new List();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
       title: new Text('BottomNavigationBarDemo'),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          items: items,
          onTap: onTap,
          currentIndex: page),
      body: new PageView(
        children: items.map((BottomNavigationBarItem itemdemo) {
          BottomNavigationBarItem item = itemdemo;
          return new Padding(
            padding: const EdgeInsets.all(16.0),
            child: getWidget(item),
          );
        }).toList(),
        onPageChanged: _onchanget,
        controller: _PageControl,
      ),
    );
  }


  void _onchanget(int value) {
    setState(() {
      this.page = value;
    });
  }

  void onTap(int value) {
    _PageControl.animateToPage(
        value, duration: const Duration(milliseconds: 300),
        curve: Curves.ease);
  }

  Widget getWidget(BottomNavigationBarItem itemdemo) {
    BottomNavigationBarItem item = itemdemo;
    Widget widget;
    Text text = item.title;
    String clickstr = text.data;

    print("================="+text.data);

    if("home".contains(clickstr)){
      widget = new Column(
        children: <Widget>[
          new Text("我是首页，home页面"),
          new Text("我是首页，home页面"),
          new Text("我是首页，home页面"),
          new Text("我是首页，home页面"),
          new Text("我是首页，home页面"),
        ],
      );

    }else if( "bike".contains(clickstr)){
      widget = new Column(
        children: <Widget>[
          new Text("我是bike页面"),
          new Text("我是bike页面"),
          new Text("我是bike页面"),
          new Text("我是bike页面"),
          new Text("我是bike页面"),
        ],
      );
    }else{
      widget = new Column(
        children: <Widget>[
          new Text("我是其他页面"),
          new Text("我是其他页面"),
          new Text("我是其他页面"),
          new Text("我是其他页面"),
          new Text("我是其他页面"),
        ],
      );
    }
    return new Container(
      child: widget,
    );

  }
}