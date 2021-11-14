import 'package:flutter/material.dart';
import 'package:mega_mind/utilities/round_text_container.dart';
import 'package:mega_mind/utilities/text_builder.dart';

import 'constants.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
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
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: ClipOval(
                child: Image.asset('images/steena.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBuilder(
                    text: 'Dr.Strange',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontsize: 20,
                  ),
                  TextBuilder(
                    text: 'Masters in Psychology AIIMS Delhi',
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontsize: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextBuilder(
                          text: 'Exp:10+',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextBuilder(
                          text: 'Rating:4.5',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            RoundTextContainer(
              color: kLightBlue,
              text: 'Book',
              textColor: Colors.black,
              width: 80,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
