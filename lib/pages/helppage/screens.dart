import 'package:dictionary/modules/imports.dart';

class HomeHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
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
              new ListTile(
                leading: MyBullet(),
                title: new InkWell(
                  child: Text('Search'),
                  onTap: () {},
                ),
              ),
              new ListTile(
                leading: MyBullet(),
                title: new InkWell(
                  child: Text('Word of the day'),
                  onTap: () {},
                ),
              ),
              new ListTile(
                leading: MyBullet(),
                title: new InkWell(
                  child: Text('History'),
                  onTap: () {},
                ),
              ),
              new ListTile(
                leading: MyBullet(),
                title: new InkWell(
                  child: Text('Bookmarks'),
                  onTap: () {},
                ),
              ),
              new ListTile(
                leading: MyBullet(),
                title: new InkWell(
                  child: Text('Random word'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MainHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SearchHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HistoryHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BookmarksHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingsHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class EditHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BackupHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
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
