import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mega_mind/screens/p_home.dart';
import 'package:mega_mind/utilities/constants.dart';
import 'package:mega_mind/utilities/round_text_container.dart';

class Choose extends StatefulWidget {
  final String userName;
  Choose({Key? key, required this.userName}) : super(key: key);
  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: kGradientColor,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kLightBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                height: 100,
                child: Center(
                  child: Text(
                    'Which one best suits you',
                    style: GoogleFonts.oleoScript(
                        fontSize: 35, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        RoundTextContainer(
                          width: 500,
                          color: Colors.black,
                          text: "Consult",
                          textColor: Colors.white,
                          gestureDetection: true,
                          onTap: () {
                            print('consult');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PHomePage()),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 30),
                          child: Text(
                            'gopi oru kallanane enne ellarkkum arayaam.pakshe gopi athe samathikkunilla.yyyy but yyy.',
                            style: GoogleFonts.montserrat(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        RoundTextContainer(
                          width: 500,
                          color: Colors.black,
                          text: "Consultant",
                          textColor: Colors.white,
                          gestureDetection: true,
                          onTap: () {
                            print('consultant');
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 30),
                          child: Text(
                            'gopi oru kallanane enne ellarkkum arayaam.pakshe gopi athe samathikkunilla.yyyy but yyy.',
                            style: GoogleFonts.montserrat(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
