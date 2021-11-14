import 'package:flutter/material.dart';
import 'package:mega_mind/utilities/customcard.dart';

class AvailableSection extends StatefulWidget {
  const AvailableSection({Key? key}) : super(key: key);

  @override
  _AvailableSectionState createState() => _AvailableSectionState();
}

class _AvailableSectionState extends State<AvailableSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(8),
        children: [
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}
