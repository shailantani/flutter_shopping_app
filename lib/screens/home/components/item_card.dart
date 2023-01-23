import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';

import '../../../models/Product.dart';

class itemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const itemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                //height: 180,
                //width: 160,
                decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(16)),
                child: product.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.name,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text("\₹${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
