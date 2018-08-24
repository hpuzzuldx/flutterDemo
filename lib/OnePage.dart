import 'package:flutter/material.dart';
import 'package:flutterdemo/AppBarBottomSample.dart';
import 'package:flutterdemo/BasicAppBarSample.dart';
import 'package:flutterdemo/BottomNavigationBarDemo.dart';
import 'package:flutterdemo/FourPage.dart';
import 'package:flutterdemo/ListTextDemo.dart';
import 'package:flutterdemo/LogoDemo.dart';
import 'package:flutterdemo/NewsList.dart';
import 'package:flutterdemo/SimpleDialog.dart';
import 'package:flutterdemo/StapperDemo.dart';
import 'package:flutterdemo/TabAppBarSimeple.dart';
import 'package:flutterdemo/TabList.dart';
import 'package:flutterdemo/TextField.dart';
import 'package:flutterdemo/ThreePage.dart';

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Demo list'),
      ),
      body: getWidget(context),
    );
  }

  Widget getWidget(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(15.0),
      child: new ListView(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    // return new ThreePage();
                    return new ColorsDemo();
                  }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'ColorsDemo',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new ThreePage();
                  }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'tablist',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new BasicAppBarSample();
                  }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'BasicAppBarSample',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new FourPage();
                  }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'FourPage',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new TabAppBarSample();
                  }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'TabAppBar',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new AppBarBottomSample();
                  }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'AppBarBottomSample',
                )),
          ),
          //
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new BottomNavigationBarDemo();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'BottomNavigationBarDemo',
                )),
          ),
          //StapperDemo
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new StapperDemo();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'StapperDemo',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new ListTextDemo();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'ListDemo',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new DialogDemo();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'DialogDemo',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new LogoApp();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'LogoApp',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new TextFieldDemo();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'TextFieldDemo',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new News();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'News List',
                )),
          ),
          new Padding(
            padding: EdgeInsets.all(10.0),
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                        return new StapperDemo();
                      }));
                },
                color: Colors.blue[400],
                child: new Text(
                  'StapperDemo',
                )),
          ),
        ],
      ),
    );
  }

  openOne(BuildContext context, int num) {
    if (num == 1) {
      Navigator.push(context, new MaterialPageRoute(builder: (context) {
        // return new ThreePage();
        return new ColorsDemo();
      }));
    } else if (num == 2) {
      Navigator.push(context, new MaterialPageRoute(builder: (context) {
        return new ThreePage();
      }));
    } else if (num == 3) {
      Navigator.push(context, new MaterialPageRoute(builder: (context) {
        // return new ThreePage();
        return new ColorsDemo();
      }));
    } else if (num == 4) {
      Navigator.push(context, new MaterialPageRoute(builder: (context) {
        // return new ThreePage();
        return new ColorsDemo();
      }));
    }
  }
}
