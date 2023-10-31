import 'package:flutter/material.dart';
import 'package:online_shop/components/item_card.dart';
import 'package:online_shop/core/constants/constants.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/detail/detail_screen.dart';
import 'package:online_shop/screens/home/categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            'Wommen',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        const SizedBox(
          height: kDefaultPaddin / 2,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin),
              itemBuilder: (context, index) {
                if (index < products.length) {
                  return ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(product: products[index]))),
                  );
                } else {
                  // Return an empty or placeholder widget when index is out of bounds
                  return Container();
                }
              },
            ),
          ),
        )
      ],
    );
  }
}
