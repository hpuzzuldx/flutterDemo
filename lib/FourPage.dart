import 'package:flutter/material.dart';

class FourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('container demo'),
      ),
      body: new Container(
        padding: EdgeInsets.all(2.0),
        alignment: Alignment(1.0, 1.0),
        child: new Row(
          children: <Widget>[
            new Container(
              child: new Text('one1111 page'),
            ),
            new Text('one222 page'),
            // new Text('one333 page'),
            //  new Text('one444 page'),
            // new Text('one555 page'),
          ],
        ),
      ),
    );
  }
}
