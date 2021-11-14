import 'package:flutter/material.dart';
import 'package:mega_mind/utilities/constants.dart';
import 'package:mega_mind/utilities/customcard.dart';
import 'package:mega_mind/utilities/mybottombar.dart';
import 'package:mega_mind/utilities/notificationcard.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomBar(),
      appBar: AppBar(
        backgroundColor: kLightBlue,
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset('images/steena.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
        ],
      ),
    );
  }
}
