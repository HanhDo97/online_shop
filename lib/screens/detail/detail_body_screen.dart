import 'package:flutter/material.dart';
import 'package:online_shop/components/color_and_size.dart';
import 'package:online_shop/components/description.dart';
import 'package:online_shop/components/product_title_image.dart';
import 'package:online_shop/core/constants/constants.dart';
import 'package:online_shop/models/product.dart';

class DetailBody extends StatelessWidget {
  final Product product;
  const DetailBody({super.key, required this.product});
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
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.35),
                      width: size.width,
                      height: size.height,
                      padding: EdgeInsets.only(
                        top: size.height * 0.1,
                        left: kDefaultPaddin,
                        right: kDefaultPaddin,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24)),
                      ),
                      child: Column(
                        children: [
                          ColorAndSize(product: product),
                          Description(product: product),
                          CartCouter(),
                        ],
                      ),
                    ),
                  ],
                ),
                ProductWithTitle(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CartCouter extends StatefulWidget {
  const CartCouter({super.key});

  @override
  State<CartCouter> createState() => _CartCouterState();
}

class _CartCouterState extends State<CartCouter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(),
        Padding(
          padding: const EdgeInsets.all(kDefaultPaddin / 4),
          child: Text(
            "01",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
          ),
        ),
        buildOutlineButton(),
      ],
    );
  }

  ConstrainedBox buildOutlineButton() {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 32),
      child: OutlinedButton(
        onPressed: () {},
        child: Icon(Icons.remove),
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
      ),
    );
  }
}
