import 'package:dictionary/modules/imports.dart';

void main() => runApp(Dictionary());

class Dictionary extends StatelessWidget {
  const Dictionary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        History.id: (context) => History(),
        NotePage.id: (context) => NotePage(),
        SettingsPage.id: (context) => SettingsPage(),
        BookmarkPage.id: (context) => BookmarkPage(),
        WordPage.id: (context) => WordPage(),
        Help.id: (context) => Help()
        //Help Page Carousels
      },
    );
  }
}
