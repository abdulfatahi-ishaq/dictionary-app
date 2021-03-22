import 'package:dictionary/components/reusables.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);
  static const String id = "settings_id";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
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
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.help), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SettingsList(isHeading: true, title: "Display"),
            SettingsList(
              isHeading: false,
              title: "Theme",
              subtitle: Text("Change the colors"),
            ),
            SettingsList(
              isHeading: false,
              title: "Font Size",
              subtitle: Text("100 %"),
            ),
            SettingsList(
              isHeading: false,
              title: "Orientation",
              subtitle: Text("Automatic"),
            ),
            SettingsList(
              isHeading: false,
              title: "Only Uppercase",
              button: Switch(
                value: isSwitched,
                onChanged: (value) {
                  isSwitched = value;
                },
                activeColor: Colors.red,
                activeTrackColor: Colors.redAccent,
              ),
            ),
            Divider(color: Colors.red),
            SettingsList(isHeading: true, title: "Settings"),
            SettingsList(
              isHeading: false,
              title: "Floating Action Button",
              subtitle: Text("Disabled"),
            ),
            SettingsList(
              isHeading: false,
              title: "Shake Action",
              subtitle: Text("Disabled"),
            ),
            SettingsList(isHeading: false, title: "Text to Speech"),
            SettingsList(
              isHeading: false,
              title: "Persistent search",
              button: Switch(
                value: isSwitched,
                onChanged: (value) {
                  isSwitched = value;
                },
                activeColor: Colors.red,
                activeTrackColor: Colors.redAccent,
              ),
            ),
            SettingsList(
              isHeading: false,
              title: "Start up Page",
              subtitle: Text("Home Page"),
            ),
            SettingsList(
              isHeading: false,
              title: "History",
              subtitle: Text("100"),
            ),
            Divider(color: Colors.red),
            SettingsList(isHeading: true, title: "Information"),
            SettingsList(
              isHeading: false,
              title: "Find offline dictionaries",
              button: Icon(Icons.open_in_new),
            ),
            SettingsList(
              isHeading: false,
              title: "My website",
              subtitle: Text("Visit my website"),
              button: Icon(Icons.open_in_new),
            ),
            SettingsList(
              isHeading: false,
              title: "English Dictionary",
              subtitle: Text("Version"),
              button: Text('1.0.0'),
            ),
            SettingsList(
              isHeading: false,
              title: "Credits",
              onPressed: () {
                print("Ma for, mo wa pelu e");
              },
            ),
          ],
        ),
      ),
    );
  }
}
