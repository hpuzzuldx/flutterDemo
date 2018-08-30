import 'package:flutter/material.dart';

class Demo3Page extends StatefulWidget{
  final Person person;

  Demo3Page({Key key, @required this.person}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new Demo3State(this.person);
  }

}

class Demo3State  extends State<Demo3Page>{
  final Person person;
  Demo3State(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("demo3page"),
      ),
      body: new Column(
       mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("name:"+person.name),
          new Text("age:"+(person.age).toString()),
        ],
      ),
    );
  }
}


class Person{
  String name;
  int age;
  Person(this.name,this.age);
}