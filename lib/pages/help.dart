import 'package:dictionary/modules/imports.dart';

class Help extends StatefulWidget {
  static final String id = "help_page";
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Help'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.info),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ListView(),
    );
  }
}
