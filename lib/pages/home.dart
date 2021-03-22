import 'package:dictionary/modules/imports.dart';
import 'package:dictionary/pages/word.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
    bool isAppBar = true;
    bool isEmpty = true;
    return Scaffold(
      // drawer: SideDrawer(),
      primary: true,
      appBar: isAppBar
          ? AppBar(
              backgroundColor: Colors.red,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    isAppBar = false;
                  });
                },
              ),
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 5),
                child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    cursorColor: Colors.white38,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: ("Enter the word to search for"),
                        hintStyle: TextStyle(color: Colors.white38))),
              ),
              actions: [
                Visibility(
                  visible: isEmpty,
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          : AppBar(
              leading: IconButton(
                icon: Icon(Icons.dehaze, color: Colors.white),
                onPressed: () {
                  if (_scaffoldKey.currentState.isDrawerOpen == false) {
                    _scaffoldKey.currentState.openDrawer();
                  } else {
                    _scaffoldKey.currentState.openDrawer();
                  }
                },
              ),
              backgroundColor: Colors.red,
              title: Text(
                'English Dictionary',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        isAppBar = true;
                      });
                    })
              ],
              automaticallyImplyLeading: true,
            ),

      body: Scaffold(
        key: _scaffoldKey,
        drawer: SideDrawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeMenu(
                    icon: Icons.post_add_sharp,
                    label: "Word of the day",
                    onPressed: () {
                      Navigator.pushNamed(context, WordPage.id);
                    }),
                SizedBox(height: 15.0),
                HomeMenu(
                    icon: Icons.history,
                    label: "History",
                    onPressed: () {
                      Navigator.pushNamed(context, History.id);
                    }),
                SizedBox(height: 15.0),
                HomeMenu(
                    icon: Icons.star,
                    label: "Bookmarks",
                    onPressed: () {
                      Navigator.pushNamed(context, BookmarkPage.id);
                    }),
                SizedBox(height: 15.0),
                HomeMenu(
                    icon: Icons.compare_arrows,
                    label: "Random",
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
