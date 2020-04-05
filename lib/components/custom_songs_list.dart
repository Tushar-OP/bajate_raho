import 'package:flutter/material.dart';

class CustomSongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 416,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(110),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 25, top: 30),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/girls.jpg'),
              ),
              title: Text('Girls Like You'),
              subtitle: Text('MAROON 5'),
              trailing: Text('4:44'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dheeme.jpg'),
              ),
              title: Text('Dheeme Dheeme'),
              subtitle: Text('Tony Kakkar'),
              trailing: Text('2:16'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/shaitan.jpg'),
              ),
              title: Text('Shaitan ka Sala'),
              subtitle: Text('Vishal Dadlani'),
              trailing: Text('2:15'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/muqabla.jpg'),
              ),
              title: Text('Muqabla'),
              subtitle: Text('Yash Narvekar'),
              trailing: Text('3:09'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/senorita.jpeg'),
              ),
              title: Text('Senorita'),
              subtitle: Text('Camila Cabello'),
              trailing: Text('3:24'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/faded.jpg'),
              ),
              title: Text('Faded'),
              subtitle: Text('Alan Walker'),
              trailing: Text('3:44'),
            ),
          ],
        ),
      ),
    );
  }
}
