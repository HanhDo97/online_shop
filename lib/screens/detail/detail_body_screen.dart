import 'package:flutter/material.dart';
import 'package:online_shop/components/color_and_size.dart';
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
                      child: ColorAndSize(product: product),
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
