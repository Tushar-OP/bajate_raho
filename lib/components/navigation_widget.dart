import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 60),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(55, 33, 200, 1),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                color: Color.fromRGBO(55, 33, 200, 1),
              ),
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 5),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
