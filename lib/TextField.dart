import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

class _ExampleWidgetState extends State<TextFieldDemo> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('textField'),),
      body:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new TextField(
            controller: _controller,
            decoration: new InputDecoration(
              hintText: 'Type something',
            ),
          ),
          new RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text('What you typed'),
                  content: new Text(_controller.text),
                ),
              );
            },
            child: new Text('DONE'),
          ),
        ],
      ) ,

    );

  }
}