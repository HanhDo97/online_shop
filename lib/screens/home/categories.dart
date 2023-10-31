import 'package:flutter/material.dart';
import 'package:online_shop/core/constants/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
    "Footwear",
    "Dresses"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategories(index),
      ),
    );
  }

  Widget buildCategories(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Column(
            children: [
              Text(categories[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == index
                          ? kTextColor
                          : kTextLightColor)),
              Container(
                margin: const EdgeInsets.only(top: kDefaultPaddin / 10),
                height: 2,
                width: 30,
                color: selectedIndex == index ? kTextColor : Colors.transparent,
              ),
            ],
          ),
        ),
      );
}
