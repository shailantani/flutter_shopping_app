import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';
import 'package:flutter_shopping_app/models/Product.dart';

class ProductTitleWithTitle extends StatelessWidget {
  const ProductTitleWithTitle({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        children: [
          /*Text(
            'shirt',
            style: TextStyle(color: Colors.white),
          ),*/
          Text(
            product.name,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                        text: "\₹${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(
                width: 60,
                //height: 10,
              ),

              Expanded(
                child: product.image,
                //fit: BoxFit.fitWidth,
              )
              //)
              //)
            ],
          ),
        ],
      ),
    );
  }
}
