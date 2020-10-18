import 'package:flutter/material.dart';


void main() {
  runApp(MyStatefulWidget());
}


class MyApp extends StatelessWidget {
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
            child: Container(
            child: Column(
            children: [
            Text("Second Screen"),
            ],
            ),
            ),
          ),
        ),
       
      ),
    );
  }
}
