import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(children: [
                ColorDot(color: Color(0xFF356C95), isSelected: true),
                ColorDot(color: Color.fromARGB(255, 46, 210, 1)),
                ColorDot(color: Color.fromARGB(255, 140, 20, 110)),
                //ColorDot(color: Color(0xFF356C95)),
              ])
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(color: kDefaultIconDarkColor),
                  children: [
                TextSpan(text: "size\n"),
                TextSpan(
                    text: "Product Size",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold))
              ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
