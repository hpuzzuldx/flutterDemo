import 'package:flutter/material.dart';

class StapperDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return new StapperState();
  }

}

class StapperState  extends State<StapperDemo>{
  final List<Step> stepss = new List();

  @override
  void initState() {
    super.initState();
    stepss.add(new Step(title: new Text("step1"), content: new Text("step11")));
    stepss.add(new Step(title: new Text("step2"), content: new Text("step22")));
    stepss.add(new Step(title: new Text("step3"), content: new Text("step33")));
    stepss.add(new Step(title: new Text("step4"), content: new Text("step44")));
    stepss.add(new Step(title: new Text("step5"), content: new Text("step55")));

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('SatapperStateViewe'),),
      body: new Stepper(
      steps:stepss,
      type: StepperType.vertical,
      currentStep: 0,
      ),
    );
  }
}