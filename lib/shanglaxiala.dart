import 'dart:async' show Future, Timer;

import 'package:flutter/material.dart';
import 'package:flutterdemo/Refresh.dart';
import 'package:english_words/english_words.dart';

class RefreshDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     /* appBar: new AppBar(
        title: new Text("刷新"),
      ),*/
      body: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Key key = GlobalKey();
  int _counter = 20;

  Future<Null> getData() {
    setState(() {
      _counter += 10;
      if (_counter > 40) {
        isnomore = true;
      }
    });
    return Future.delayed(Duration(milliseconds: 500), () {});
  }

  Future<Null> reset() {
    setState(() {
      list.clear();
      _counter = 20;
      isnomore = false;
    });
    return Future.delayed(Duration(milliseconds: 500), () {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(
                child: RefreshLayout(
                    canloading: !isnomore,
                    onRefresh: (boo) {
                      if (!boo) {
                        return getData();
                      } else {
                        return reset();
                      }
                    },
                    key: key,
                    child: new ListView(
                      children: _listBuilder(_counter),
                    ),
                    loadingBuilder: (BuildContext context) {
                      return Padding(padding: EdgeInsets.all(15.0),child: Text('正在加载中...'),);
                    })),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }

  bool isnomore = false;

  final List<String> list = [];

  List<Widget> _listBuilder(int i) {
    final List<Widget> listw = [];
    if (list.isEmpty) {
      for (int i = 0; i < 1000; i++) {
        list.add(WordPair.random().asPascalCase);
      }
    }
    for (int count = 0; count < i; count++) {
      listw.add(ListTile(
          leading: Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
          title: Text(list[count])));
    }
    listw.add(
      Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Center(child: Text(!isnomore ? "" : '我是有底线的'))),
    );
    return listw;
  }
}