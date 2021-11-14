import 'package:flutter/material.dart';

const kGradientColor = [Color(0xffA1C4FD), Color(0xffC2E9FB)];
const kLightBlue = Color(0xff2AF0FC);
const kIconColor = Color(0xffA1C4FD);

void animation(widget, page) {
  widget.pageController.animateToPage(page,
      duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
}

const Color kpink = Color(0xffd7266a);
const Color kpurple = Color(0xffb274f3);
const Color kblack = Colors.black;
