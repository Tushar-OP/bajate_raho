import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.icon, this.cardName, this.colr, this.nextPage});

  final Color colr;
  final String cardName;
  final IconData icon;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      child: Container(
        height: 250,
        width: 200,
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.all(10.0),
          color: colr,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  cardName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
