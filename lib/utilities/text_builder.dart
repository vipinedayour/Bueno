import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mega_mind/utilities/constants.dart';

class TextBuilder extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;
  final EdgeInsetsGeometry padding;
  final FontWeight fontWeight;
  final bool gesturestatus;
  final GestureTapCallback? onTap;
  final bool enableShadow;

  TextBuilder(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.fontsize = 15,
      this.padding = EdgeInsets.zero,
      this.fontWeight = FontWeight.normal,
      this.gesturestatus = false,
      this.onTap,
      this.enableShadow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        print('double tapped');
      },
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style: TextStyle(
              shadows: enableShadow
                  ? [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 1,
                        color: Colors.black,
                      ),
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 1,
                        color: kpurple,
                      ),
                    ]
                  : [
                      Shadow(
                        offset: Offset(10.0, 10.0),
                        blurRadius: 3.0,
                        color: Colors.transparent,
                      ),
                      Shadow(
                        offset: Offset(10.0, 10.0),
                        blurRadius: 8.0,
                        color: Colors.transparent,
                      ),
                    ],
              color: color,
              fontSize: fontsize,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}
