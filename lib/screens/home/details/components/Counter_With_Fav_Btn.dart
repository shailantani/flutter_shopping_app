import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/home/details/components/cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(1),
          height: 35,
          width: 35,
          decoration:
              BoxDecoration(color: Color(0xffff6464), shape: BoxShape.circle),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
