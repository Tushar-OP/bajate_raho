import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/custom_songs_list.dart';
import 'components/navigation_widget.dart';
import 'components/section_info.dart';

class MostPlayedSongs extends StatefulWidget {
  @override
  _MostPlayedSongsState createState() => _MostPlayedSongsState();
}

class _MostPlayedSongsState extends State<MostPlayedSongs> {
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
                sectionName: 'Most Played',
                icon: Icons.label_important,
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
