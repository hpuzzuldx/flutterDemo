import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _BottomNavigationState ();
  }

}

class _BottomNavigationState extends State<BottomNavigationBarDemo> {

  PageController _PageControl;
  int page = 0;

  @override
  void initState() {
    super.initState();
    _PageControl = new PageController(initialPage: this.page);
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.directions_car), title: new Text("home")));
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.directions_bike), title: new Text("bike")));
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.directions_bus), title: new Text("bus")));

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
          return new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Text(itemdemo.title.toStringShort()),
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
}