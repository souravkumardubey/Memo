import 'package:flutter/material.dart';


void main() {
  runApp(MyStatefulWidget());
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Text("Memo"),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Center(child: Text("Second Screen"),),
          ),
        ),
       
      ),
    );
  }
}
