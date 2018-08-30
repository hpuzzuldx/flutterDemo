import 'dart:convert';
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutterdemo/FourPage.dart';
import 'package:flutterdemo/TabList.dart';
import 'package:flutterdemo/ThreePage.dart';
import 'package:flutterdemo/two.dart';

/*void main() =>{
debugPaintSizeEnabled = true;
runApp(new MyApp());
};*/

void main() {
 // debugPaintSizeEnabled = true;      //打开视觉调试开关
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();

    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      /*theme: new ThemeData(
        primaryColor: Colors.white,
      ),*/
      routes: <String,WidgetBuilder>{
        '/router/onepage':(_) => new ColorsDemo(),
        '/router/twopage':(_) =>  new ThreePage(),
        '/router/threepage':(_) => new FourPage(),
      },
      home: new Scaffold(
         /*appBar: new AppBar(
          title: new Text('Welcome to Flutter222'),
            centerTitle:true ,
        ),*/
        drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text('User Name'),
                  accountEmail: new Text('email@example.com'),
                  currentAccountPicture:
                  new CircleAvatar(backgroundImage: new AssetImage("images/touxiang.jpg")),
                  otherAccountsPictures: <Widget>[
                    new CircleAvatar(backgroundImage: new AssetImage("images/touxiang.jpg")),
                    new CircleAvatar(backgroundImage: new AssetImage("images/touxiang.jpg")),
                  ],
                  onDetailsPressed: () {},
                ),
                new AboutListTile(
                  icon: new Icon(Icons.person),
                  child:  new Text("item5"),

                ),
                new AboutListTile(
                  icon: new Icon(Icons.person),
                  child:  new Text("item5"),

                ),
                new AboutListTile(
                  icon: new Icon(Icons.person),
                  child:  new Text("item5"),

                ),
  ],
                ),
            ),
        body: new Center(
          // child: new Text('Hello World'),
          child: new TwoClass(),

        ),
        ),
        localizationsDelegates: [                             //此处
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [                                   //此处
          const Locale('zh','CH'),
          const Locale('en','US'),
        ],

    );
  }


}
