import 'package:flutter/material.dart';

class ListTextDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _ListTextState();
  }

}

class _ListTextState extends State<ListTextDemo> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: new AppBar(title: new Text("list textdemo"),),
     body: new Container(
       color: Colors.grey,
       child: Column(
         children: <Widget>[
           new Text("sldfjsljflsjflsf"),
           new ListTile(
             leading: const Icon(Icons.event_seat),
             title: const Text('The seat for the narrator sdfsfsdfs sdfsfs fsdfsfs'),
           ),
           createWidget(),
           new Expanded(
             flex: 1,
             child:  new Container(
               height: 100.0,
               color: Colors.amberAccent,
               margin: EdgeInsets.only(bottom: 100.0,top: 100.0),
               alignment: Alignment.bottomCenter,
             child:   new Text("bottom view"),
             ),
           ),
         ],
       ),
     ),
   );
  }



  Widget createWidget(){
    return new Container(
      margin: EdgeInsets.only(top: 10.0),
      child: new Row(
        children: <Widget>[
          new Text('data'),
          new RaisedButton(onPressed: (){

          },
            child: new Text("click"),
          ),
          new Expanded(child:  new ListTile(
            leading: const Icon(Icons.event_seat),
            title: const Text('The seat for the narrator sdfsfsdfs sdfsfs fsdfsfs'),
          ),),
        ],
      ),
      color: Colors.blue,
    );

  }
}