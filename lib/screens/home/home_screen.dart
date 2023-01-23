import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';
import 'package:flutter_shopping_app/models/Product.dart';
import 'package:flutter_shopping_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Body(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {}, icon: Icon(Icons.arrow_back, color: kTextColor)),
      actions: <Widget>[
        IconButton(
            onPressed: () {}, icon: Icon(Icons.search, color: kTextColor)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: kTextColor)),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
