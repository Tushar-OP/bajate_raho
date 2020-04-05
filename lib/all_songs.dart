import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/custom_songs_list.dart';
import 'components/navigation_widget.dart';
import 'components/section_info.dart';

class AllSongs extends StatefulWidget {
  @override
  _AllSongsState createState() => _AllSongsState();
}

class _AllSongsState extends State<AllSongs> {
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
                sectionName: 'All Songs',
                icon: Icons.library_music,
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
