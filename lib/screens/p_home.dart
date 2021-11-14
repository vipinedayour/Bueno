import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mega_mind/mini_screens/available.dart';
import 'package:mega_mind/screens/notification.dart';
import 'package:mega_mind/utilities/category_selector.dart';
import 'package:mega_mind/utilities/constants.dart';
import 'package:mega_mind/utilities/mybottombar.dart';

class PHomePage extends StatefulWidget {
  const PHomePage({Key? key}) : super(key: key);

  @override
  _PHomePageState createState() => _PHomePageState();
}

class _PHomePageState extends State<PHomePage> {
  int pageIndex = 0;
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: kGradientColor,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              width: double.infinity,
              height: 250,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 20),
                      child: ListTile(
                          title: Text('Hi Kim',
                              style: GoogleFonts.raleway(
                                  fontSize: 28, fontWeight: FontWeight.bold)),
                          subtitle: Text(
                            'How are you feeling today',
                            style: GoogleFonts.raleway(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          trailing: Image.asset('images/test.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        '“Postive mind builds a positive life..”',
                        style: GoogleFonts.qwigley(
                            fontStyle: FontStyle.normal, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 500,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(),
                              hintText: "Search doctors, fields..... ",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CategorySelector(
              pageController: controller,
              pageIndex: pageIndex,
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });

                  print("from homepage:$pageIndex");
                },
                controller: controller,
                children: [
                  AvailableSection(),
                  AvailableSection(),
                  AvailableSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
