import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';

import '../../../../models/Product.dart';
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
                    //height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: [
                        Row(
                          children: [Text("Color")],
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
