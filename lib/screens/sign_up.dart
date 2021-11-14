import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mega_mind/screens/choose.dart';
import 'package:mega_mind/utilities/constants.dart';
import 'package:mega_mind/utilities/round_text_container.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    String userName = "";
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: kGradientColor,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '“Postive mind builds a positive life..”',
                  style: GoogleFonts.qwigley(
                      fontStyle: FontStyle.normal, fontSize: 30),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Image.asset(
                'images/brain.png',
                scale: 1.3,
              ),
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              RoundTextContainer(
                color: Colors.white,
                text: 'Username',
                textColor: Colors.grey,
                editable: true,
                onChanged: (value) {
                  userName = value;
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              RoundTextContainer(
                color: Colors.white,
                text: 'Password',
                textColor: Colors.grey,
                editable: true,
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Text(
                "Don't have an account ?",
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
              SizedBox(
                width: double.infinity,
                height: 8,
              ),
              Text(
                'Forgot Password ?',
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
              ),
              RoundTextContainer(
                color: kLightBlue,
                text: 'Login',
                textColor: Colors.black,
                width: 200,
                gestureDetection: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Choose(
                        userName: userName,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
