import 'package:flutter/material.dart';

class ThreePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   Widget titleSection = new Container(
     padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 25.0,bottom: 25.0),
     child: new Row(
       crossAxisAlignment: CrossAxisAlignment.start,
     children:[
       new Expanded(
         child:new Column(
         crossAxisAlignment:CrossAxisAlignment.start,
       children:[
         new Container(
         padding:const EdgeInsets.only(bottom: 10.0),
     child: new Text(
       'Oeschinen Lake Campground',
       style: new TextStyle(
         fontWeight: FontWeight.bold,
       ),

     ),
     ),
    new Text(
    'Kandersteg, Switzerland',
    style: new TextStyle(
    color: Colors.grey[500],
    ),

    ),
       ],
     ),
     ),
    new Container(
    margin:const EdgeInsets.only(right: 20.0),
      child: new Icon(
        Icons.star,
        color: Colors.red[500],
      ) ,
    ),

    new Text('44',
    style: new TextStyle(
      color: Colors.blue[500],
      fontSize: 20.0,
    ),),
         ],

     ),
   );

   Widget buttonSection = new Container(
     padding: EdgeInsets.only(left: 35.0,right: 35.0),
     child: new Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         buildButtonColumn(context,Icons.call, 'CALL'),
         buildButtonColumn(context,Icons.near_me, 'ROUTE'),
         buildButtonColumn(context,Icons.share, 'SHARE'),
       ],
     ),
   );


   Widget textSection = new Container(
     padding: const EdgeInsets.all(32.0),
     child: new Text(
       '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
       softWrap: true,
     ),
   );


return new Scaffold(
  body: new ListView(
    children: [
      new Image.asset(
        'images/park.jpg',
        width: 600.0,
        height: 200.0,
        fit: BoxFit.cover,
      ),
      titleSection,
      buttonSection,
      textSection,
    ],
  ),
);
  }



  Column buildButtonColumn(BuildContext context,IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;

    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

}