import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new MemoHome());
  }
}

class MemoHome extends StatelessWidget {
  Widget item() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.2)),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Student Names",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Hello my name is Shubham Kumar Dubey",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "1:30",
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WriteMemo()));
        },
      ),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(248, 147, 0, 1),
        title: Center(
          child: Text(
            "Memo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
        ],
      ),
    );
  }
}

class WriteMemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WritingMemo();
  }
}

class WritingMemo extends State<WriteMemo> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            FlatButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text(
                "Save",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter title',
                fillColor: Colors.red,
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter title',
                  border: null,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
