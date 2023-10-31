import 'package:flutter/material.dart';
import 'package:online_shop/core/constants/constants.dart';
import 'package:online_shop/screens/home/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: kTextColor,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: kTextColor,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: kTextColor)
        ]);
  }
}
