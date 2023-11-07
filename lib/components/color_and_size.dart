import 'package:flutter/material.dart';
import 'package:online_shop/core/constants/constants.dart';
import 'package:online_shop/models/product.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: Colors.blue[900],
                    isSelected: true,
                  ),
                  const SizedBox(width: kDefaultPaddin / 2),
                  ColorDot(color: Colors.yellow[300]),
                  const SizedBox(width: kDefaultPaddin / 2),
                  const ColorDot(color: Colors.black54),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text:
                TextSpan(style: const TextStyle(color: kTextColor), children: [
              const TextSpan(text: "Size\n"),
              TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ))
            ]),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final color;
  final bool isSelected;

  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPaddin / 4,
      ),
      height: 24,
      width: 24,
      padding: const EdgeInsets.all(2.4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
