import 'package:dictionary/modules/imports.dart';

class HomeHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'The Initial page of the dictionary shows the icons related to common features:',
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              ListTile(
                leading: MyBullet(),
                title: Text('Search'),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text('Word of the day'),
              ),
              new ListTile(
                leading: MyBullet(),
                title: Text('History'),
              ),
              new ListTile(
                leading: MyBullet(),
                title: Text('Bookmarks'),
              ),
              new ListTile(
                leading: MyBullet(),
                title: Text('Random word'),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
