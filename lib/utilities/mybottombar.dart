import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mega_mind/screens/notification.dart';
import 'package:mega_mind/screens/p_home.dart';

import 'constants.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 50,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 75,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              iconSize: 30.0,
              color: kIconColor,
              icon: Icon(FontAwesomeIcons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PHomePage()),
                );
              },
            ),
            IconButton(
              iconSize: 30,
              color: kIconColor,
              icon: Icon(FontAwesomeIcons.heart),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 30.0,
              color: kIconColor,
              icon: Icon(FontAwesomeIcons.solidBell),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
            ),
            IconButton(
              iconSize: 30.0,
              color: kIconColor,
              icon: Icon(FontAwesomeIcons.userFriends),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
