import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundTextContainer extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final double width;
  final double height;
  final bool editable;
  final bool gestureDetection;
  final Function()? onTap;
  final Function(dynamic)? onChanged;
  RoundTextContainer(
      {required this.color,
      required this.text,
      required this.textColor,
      this.height = 50,
      this.width = 300,
      this.editable = false,
      this.gestureDetection = false,
      this.onTap,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    String userInput;
    return Container(
      child: InkWell(
        onTap: gestureDetection ? onTap : null,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(3, 3), // changes position of shadow
                ),
              ]),
          width: width,
          height: height,
          child: Center(
            child: editable
                ? TextField(
                    onChanged: onChanged,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: text,
                      hintStyle: GoogleFonts.oleoScript(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: textColor),
                    ),
                  )
                : Text(
                    text,
                    style: GoogleFonts.oleoScript(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: textColor),
                  ),
          ),
        ),
      ),
    );
  }
}
