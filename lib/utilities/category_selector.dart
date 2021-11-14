import 'package:flutter/material.dart';
import 'package:mega_mind/utilities/text_builder.dart';
import 'constants.dart';

enum Category { available, favourites, history }

class CategorySelector extends StatefulWidget {
  final PageController pageController;
  final int pageIndex;

  const CategorySelector(
      {Key? key, required this.pageController, required this.pageIndex})
      : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  void colorChanger() {
    int currentpage = widget.pageIndex;
    selectedCategory = currentpage == 0
        ? Category.available
        : currentpage == 1
            ? Category.favourites
            : Category.history;
  }

  Category selectedCategory = Category.available;
  @override
  Widget build(BuildContext context) {
    colorChanger();
    return Container(
      height: 60,
      child: Row(
        // shrinkWrap: true,
        // scrollDirection: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextBuilder(
            color: selectedCategory == Category.available ? kpink : kblack,
            text: 'Available',
            padding: EdgeInsets.all(18).copyWith(left: 25, right: 25),
            gesturestatus: true,
            onTap: () {
              print("from category Selector${widget.pageIndex}");
              print('tapped');
              animation(widget, 0);
              setState(() {
                selectedCategory = Category.available;
              });
            },
          ),
          TextBuilder(
            color: selectedCategory == Category.favourites ? kpink : kblack,
            text: 'Favourites',
            padding: EdgeInsets.all(18).copyWith(left: 25, right: 25),
            gesturestatus: true,
            onTap: () {
              print("from category Selector${widget.pageIndex}");
              print('tapped');
              ;
              animation(widget, 1);
              setState(() {
                selectedCategory = Category.favourites;
              });
            },
          ),
          TextBuilder(
            color: selectedCategory == Category.history ? kpink : kblack,
            text: 'History',
            padding: EdgeInsets.all(18).copyWith(left: 25, right: 25),
            gesturestatus: true,
            onTap: () {
              print("from category Selector${widget.pageIndex}");
              print('tapped');
              animation(widget, 2);
              setState(() {
                selectedCategory = Category.history;
              });
            },
          ),
        ],
      ),
    );
  }
}
