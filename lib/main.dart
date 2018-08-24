import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutterdemo/two.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        /*  appBar: new AppBar(
          title: new Text('Welcome to Flutter222'),
            centerTitle:true ,
        ),*/
        body: new Center(
         // child: new Text('Hello World'),
          child: new TwoClass(),

        ),
      ),
    );
  }
}
