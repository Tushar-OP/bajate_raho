import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/custom_songs_list.dart';
import 'components/navigation_widget.dart';
import 'components/section_info.dart';

class RecentlyPlayedSongs extends StatefulWidget {
  @override
  _RecentlyPlayedSongsState createState() => _RecentlyPlayedSongsState();
}

class _RecentlyPlayedSongsState extends State<RecentlyPlayedSongs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(39, 21, 148, 1),
          child: Column(
            children: <Widget>[
              NavigationWidget(),
              SizedBox(
                height: 70,
              ),
              SectionInfo(
                sectionName: 'Recently Played',
                icon: Icons.watch_later,
              ),
              SizedBox(
                height: 70,
              ),
              CustomSongList(),
            ],
          ),
        ),
      ),
    );
  }
}
