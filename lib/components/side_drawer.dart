import 'package:dictionary/modules/imports.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: ListTile.divideTiles(
              context: context,
              tiles: [
                ListTile(
                    leading: Icon(Icons.history),
                    title: Text('History'),
                    onTap: () {
                      Navigator.pushNamed(context, History.id);
                    }),
                ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Bookmarks'),
                    onTap: () {
                      Navigator.pushNamed(context, BookmarkPage.id);
                    }),
                ListTile(
                    leading: Icon(Icons.note_add),
                    title: Text('Notes'),
                    onTap: () {
                      Navigator.pushNamed(context, NotePage.id);
                    }),
                ListTile(
                    leading: Icon(Icons.compare_arrows_outlined),
                    title: Text('Random Word'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.settings_applications),
                    title: Text('Settings'),
                    onTap: () {
                      Navigator.pushNamed(context, SettingsPage.id);
                    }),
                ListTile(
                    leading: Icon(Icons.backup),
                    title: Text('Backup'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.restore_from_trash_rounded),
                    title: Text('Restore'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.close),
                    title: Text('Exit'),
                    onTap: () {
                      SystemNavigator.pop();
                    }),
              ],
            ).toList()),
      ),
    );
  }
}
