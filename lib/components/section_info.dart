import 'package:flutter/material.dart';

class SectionInfo extends StatelessWidget {
  SectionInfo({@required this.sectionName, @required this.icon});

  final String sectionName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                sectionName,
                style: TextStyle(
                    fontSize: 38,
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '72 songs | created by Tushar',
                style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ],
          )
        ],
      ),
    );
  }
}
