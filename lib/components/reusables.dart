import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  HomeMenu({this.icon, this.label, this.onPressed});
  final IconData icon;
  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(width: 10.0),
          Text(
            label,
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );
  }
}

class HistoryItems extends StatelessWidget {
  HistoryItems({this.title, this.subtitle, this.onPressed});
  final String title;
  final String subtitle;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 15.0)),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 10.0)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.close,
          color: Colors.grey,
        ),
      ),
    );
  }
}

//Custom AppBar for other pages aside home page
class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        IconButton(icon: Icon(Icons.share), onPressed: () {}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
      ],
    );
  }
}

//Settings Page Menus
class SettingsList extends StatelessWidget {
  SettingsList({
    this.title,
    this.subtitle,
    this.button,
    this.onPressed,
    this.isHeading,
  });
  final String title;
  final Text subtitle;
  final Widget button;
  final Function onPressed;
  final bool isHeading;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: ListTile(
        // contentPadding: EdgeInsets.all(0),
        dense: true,
        title: Text(title,
            style: TextStyle(
                fontSize: 15.0,
                color: isHeading ? Colors.red : Colors.black54,
                fontWeight: FontWeight.bold)),
        subtitle: subtitle,
        trailing: button,
      ),
    );
  }
}
