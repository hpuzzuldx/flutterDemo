import 'package:flutter/material.dart';

class DialogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Dialog demo'),),
      body: new Column(
        children: <Widget>[
          new FlatButton(onPressed: (){
            _pressClick(context,1);
          }, child: new Text("simple dialog")),
          new FlatButton(onPressed: (){
            _pressClick(context,2);
          }, child: new Text("alert dialog")),
        ],
      ),
    );
  }

  void _pressClick(BuildContext context,int num) {
    if(num == 1){

      showDialog(context: context,
      builder:(context){
        return  new SimpleDialog(
          title: const Text('Select assignment'),
          children: <Widget>[
            new SimpleDialogOption(
              onPressed: () {  Navigator.of(context).pop();},
              child: const Text('Treasury department'),
            ),
            new SimpleDialogOption(
              onPressed: () {  Navigator.of(context).pop(); },
              child: const Text('State department'),
            ),
          ],
        ).build(context);
      },);

    }else{
      showDialog<Null>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text('Rewind and remember'),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  new Text('You will never be satisfied.'),
                  new Text('You\’re like me. I’m never satisfied.'),
                ],
              ),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Regret'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

}