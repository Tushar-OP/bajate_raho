import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/reusable_card.dart';
import 'all_songs.dart';
import 'most_played.dart';
import 'favourite_song.dart';
import 'recently_added.dart';
import 'recently_played.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = 'Tap Here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20.0, top: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            title: Text('Want to change the name?'),
                            content: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    autofocus: true,
                                    onChanged: (value) {
                                      name = value;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              Center(
                                child: FlatButton(
                                  child: Text(
                                    'RENAME',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  color: Color.fromRGBO(39, 21, 148, 1),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: Text(
                    name,
                    style: GoogleFonts.notoSans(
                      textStyle: Theme.of(context).textTheme.display1,
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  'Good Morning',
                  style: GoogleFonts.notoSans(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ReusableCard(
                        icon: Icons.favorite,
                        cardName: 'Favorites',
                        colr: Color.fromRGBO(39, 21, 148, 1),
                        nextPage: FavouriteSongs(),
                      ),
                      ReusableCard(
                        icon: Icons.add,
                        cardName: 'Recently Added',
                        colr: Color.fromRGBO(18, 148, 139, 1),
                        nextPage: RecentlyAddedSongs(),
                      ),
                      ReusableCard(
                        icon: Icons.label_important,
                        cardName: 'Most Played',
                        colr: Color.fromRGBO(39, 21, 148, 1),
                        nextPage: MostPlayedSongs(),
                      ),
                      ReusableCard(
                        icon: Icons.watch_later,
                        cardName: 'Recently Played',
                        colr: Color.fromRGBO(18, 148, 139, 1),
                        nextPage: RecentlyPlayedSongs(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'All Songs',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllSongs(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.forward,
                        color: Colors.amber,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Girls Like You'),
                        subtitle: Text('MAROON 5'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Dheeme Dheeme'),
                        subtitle: Text('Tony Kakkar'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Shaitan ka Sala'),
                        subtitle: Text('Vishal Dadlani'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Muqabla'),
                        subtitle: Text('Yash Narvekar'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Senorita'),
                        subtitle: Text('Camila Cabello'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Faded'),
                        subtitle: Text('Alan Walker'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Bajate_Raho_1.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
