import 'package:dictionary/modules/imports.dart';

class WordPage extends StatefulWidget {
  static const String id = "word_page";
  WordPage({Key key}) : super(key: key);

  @override
  _WordPageState createState() => _WordPageState();
}

class _WordPageState extends State<WordPage> {
  @override
  bool isOrigin = false;
  String originToggle = "hide";
  IconData originIcon = Icons.arrow_drop_down;
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
    return Scaffold(
      primary: true,
      appBar: AppBar(
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
        title: Text(
          'English Dictionary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[600],
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.white,
              ),
              onPressed: null)
        ],
        automaticallyImplyLeading: true,
      ),
      body: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.volume_up, color: Colors.white, size: 40.0),
            onPressed: () {},
          ),
          title: Text(
            'Kleptocracy',
            style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.red[700],
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  size: 40.0,
                  color: Colors.white,
                ),
                onPressed: null),
            // SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                  icon: Icon(
                    Icons.star,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  onPressed: null),
            ),
          ],
          // automaticallyImplyLeading: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //  Etymology Pane
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Etymology",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              if (isOrigin == false) {
                                isOrigin = true;
                                originToggle = "show";
                                originIcon = Icons.arrow_drop_down;
                              } else if (isOrigin == true) {
                                isOrigin = false;
                                originToggle = "hide";
                                originIcon = Icons.arrow_drop_up;
                              }
                            });
                          },
                          child: Row(
                            children: [
                              Icon(originIcon, color: Colors.red),
                              Text(
                                originToggle,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Offstage(
                      offstage: isOrigin,
                      child: Text(
                        "The Word Kleptocracy stems from the Latin word ${'"Klepa"'}" +
                            " which means a thief, a bandit, an armed robber etc. The origin" +
                            " of the dates back to the 1600 BC  ",
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
                Divider(color: Colors.red),
                // Pronounciation Pane
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Pronounciation",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 4,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              radius: 2,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: "IPA:",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w400),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "   " "/\"laIen/",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400))
                                ]),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.red),
                // Adjective
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Noun",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      RichText(
                        text: TextSpan(
                            text: "kleptocracy",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "   " "(plural kleptocracies)",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic))
                            ]),
                      ),
                      ListTile(
                        leading: Text('1.'),
                        title: Text(
                          "A corrupt and dishonest government or society characterised by greed",
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.red),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                      text: "This text is extracted from the",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 11),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Wikitionary",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w300,
                              fontSize: 11),
                        ),
                        TextSpan(
                          text: " and it is available under the",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 11),
                        ),
                        TextSpan(
                          text: " CC BY-SA 3.0 License",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w300,
                              fontSize: 11),
                        ),
                      ]),
                ),
                // Adverb
                // Article
                // Conjuction
                // Interjection
                // Noun
                // Preposition
                // Pronoun
                // Verb
                // Synonyms
                // Antonyms
              ],
            ),
          ),
        ),
      ),
    );
  }
}
