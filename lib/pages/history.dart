import 'package:dictionary/components/reusables.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  static const String id = "history_id";
  History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'History',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          HistoryItems(
              title: "Integrate", subtitle: "2021-01-21", onPressed: () {}),
          HistoryItems(
              title: "Conjure", subtitle: "2021-01-21", onPressed: () {})
        ],
      ),
    );
  }
}
