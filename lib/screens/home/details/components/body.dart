import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';
import 'package:flutter_shopping_app/screens/home/details/components/Counter_With_Fav_Btn.dart';
import 'package:flutter_shopping_app/screens/home/details/components/Description.dart';
import 'package:flutter_shopping_app/screens/home/details/components/color_and_size.dart';

import '../../../../models/Product.dart';
import 'cart_counter.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: kDefaultPaddin,
                        right: kDefaultPaddin),
                    //height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),

                    child: Column(
                      children: [
                        ColorandSize(),
                        Description(product: product),
                        CounterWithFavBtn(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPaddin),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 58,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: product.color)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.shopping_cart)),
                              ),
                              SizedBox(
                                height: 50,
                                child: Container(
                                  height: 90,
                                  width: 58,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(color: product.color)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Buy now".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ProductTitleWithTitle(product: product)
                ],
              ))
        ],
      ),
    );
  }
}
