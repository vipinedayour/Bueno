import 'package:flutter/material.dart';
import 'package:mega_mind/utilities/text_builder.dart';

import 'constants.dart';
import 'round_text_container.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: ClipOval(
              child: Image.asset('images/steena.jpg'),
            ),
          ),
          Expanded(
            // padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextBuilder(
                      text:
                          'You have booked an appointment for consultation at Steena Xavier.'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBuilder(
                        text: '26/09/22',
                        fontWeight: FontWeight.w600,
                      ),
                      TextBuilder(
                        text: '9AM to 10AM',
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
