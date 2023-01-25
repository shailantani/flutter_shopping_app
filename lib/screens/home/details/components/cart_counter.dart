import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineMethod(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numOfItems > 1) {
                  setState(() {
                    numOfItems--;
                  });
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)),
              backgroundColor: Color(0xFF3D82AE),
            ),
            child: Icon(
              Icons.add,
              color: kDefaultIconLightColor,
            ),
          ),
        )
      ],
    );
  }

  SizedBox buildOutlineMethod(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          backgroundColor: Color(0xFF3D82AE),
        ),
        child: Icon(
          icon,
          color: kDefaultIconLightColor,
        ),
      ),
    );
  }
}
