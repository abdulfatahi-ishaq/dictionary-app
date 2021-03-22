import 'package:flutter/material.dart';
import 'package:dictionary/components/reusables.dart';

class BookmarkPage extends StatefulWidget {
  static const String id = "bookmarkpage_id";
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
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
          'Bookmarks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      body: ListView(
          children: ListTile.divideTiles(context: context, tiles: []).toList()),
    );
  }
}
